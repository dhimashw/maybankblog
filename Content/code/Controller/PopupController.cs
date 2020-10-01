namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Feature.Library.Helper;
    using System.Linq;
    using System;
    using System.Collections.Generic;
    using Sitecore.Feature.Library.Models;
    using System.Text;
    using SC = Sitecore;
    using Sitecore.Foundation.Dictionary.Extensions;
    using Sitecore.Feature.Form.Repositories;
    using System.Web.Script.Serialization;

    //[EnableCorsForSitecore]
    public class PopupController : Controller
    {
        private const string SESSION_EXPIRED_DICTIONARY_PATH = "/Feature/Form/Session End";
        private const string PAYLOAD = "payload";

        // for rendering field values
        private Sitecore.Mvc.Helpers.SitecoreHelper sitecoreHelper;
        // lazy load sitecoreHelper
        private Sitecore.Mvc.Helpers.SitecoreHelper SitecoreHelper
        {
            get
            {
                if (this.sitecoreHelper == null)
                {
                    this.sitecoreHelper =
                      Sitecore.Mvc.Helpers.ThreadHelper.GetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>();
                }

                if (this.sitecoreHelper == null)
                {
                    ViewContext viewContext = Sitecore.Mvc.Common.ContextService.Get().GetCurrent<ViewContext>();
                    Sitecore.Diagnostics.Assert.IsNotNull(viewContext, "viewContext");
                    HtmlHelper htmlHelper = new HtmlHelper(
                      viewContext,
                      new Sitecore.Mvc.Presentation.ViewDataContainer(viewContext.ViewData));
                    Sitecore.Diagnostics.Assert.IsNotNull(htmlHelper, "htmlHelper");
                    this.sitecoreHelper = new Sitecore.Mvc.Helpers.SitecoreHelper(htmlHelper);
                    Sitecore.Diagnostics.Assert.IsNotNull(this.sitecoreHelper, "sitecoreHelper");
                    Sitecore.Mvc.Helpers.ThreadHelper.SetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>(
                      this.sitecoreHelper);
                }

                return this.sitecoreHelper;
            }
        }

        // GET: Popup
        public ActionResult Index()
        {
            return View();
        }

        [NonAction]
        public int CountEmail(ESTATEMENT oESTATEMENT)
        {
            int totalEmail = 0;
            using (var db = Factory.DbEntities)
            {
                try
                {
                    totalEmail = oESTATEMENT.Get(db).Count();
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                }
            }
            return totalEmail;
        }

        [NonAction]
        public EmailContent GetEmailContent(string itemId)
        {
            SC.Data.Items.Item items = SC.Context.Database.GetItem(new Data.ID(itemId));
            string _emailFrom = items.Fields[Library.Templates.GeneralEmail.Fields.EmailFrom].Value;
            string _subject = items.Fields[Library.Templates.BaseField.Fields.Title].Value;
            string _body = items.Fields[Library.Templates.BaseField.Fields.Content].Value;
            
            EmailContent content = new EmailContent()
            {
                EmailFrom = _emailFrom,
                Subject = _subject,
                EmailBody = _body

            };
            return content;
        }

        [NonAction]
        public void Add(ESTATEMENT oESTATEMENT)
        {
            using (var db = Factory.DbEntities)
            {
                try
                {
                    oESTATEMENT.Insert(db);
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                }
            }
        }

        [NonAction]
        public bool SubmitData(ESTATEMENT oESTATEMENT, string MaxSubmit)
        {

            int countEmail = CountEmail(oESTATEMENT);

            if (countEmail >= int.Parse(MaxSubmit))
            {
                return false;
            }
            else
            {
                //methodsendEmail
                EmailContent EmailContent = GetEmailContent(Variables._emailTemplateEStatement);
                EmailContent.EmailBody = EmailContent.EmailBody.Replace("[Customer Name]", oESTATEMENT.EMAIL);
                Library.Helpers.LibraryHelpers.SendEmail(oESTATEMENT.EMAIL, EmailContent.EmailFrom, EmailContent.Subject, EmailContent.EmailBody);                
                Add(oESTATEMENT);
                return true;
            }
        }

        [NonAction]
        public ActionResult ErrorWebservice(string responseError)
        {
            Response.StatusCode = 550;
            Response.Write(responseError);
            Response.TrySkipIisCustomErrors = true;
            return new EmptyResult();
        }

        [NonAction]
        public ActionResult SessionExpired()
        {
            return ErrorWebservice(SitecoreExtensions.Dictionary(sitecoreHelper, SESSION_EXPIRED_DICTIONARY_PATH, "Sesi Anda telah habis, silahkan refresh halaman Anda!"));
        }

        private static Dictionary<string, string> DecryptObject(string Obj)
        {
            Obj = string.Concat(Obj.Reverse());
            string key = Obj.Substring(0, 8) + Obj.Substring(Obj.Length - 8);
            string value = string.Concat(Obj.Reverse().Skip(8).Reverse()).Remove(0, 8);
            var result = AESEncrytDecry.DecryptStringAESJson(key, value);
            Dictionary<string, object> resultDict = new JavaScriptSerializer().DeserializeObject(result) as Dictionary<string, object>;
            Dictionary<string, string> results = new Dictionary<string, string>();
            foreach (var item in resultDict)
                results.Add(item.Key, item.Value.ToString());

            return results;
        }

        [HttpPost]
        [ValidateAntiForgeryTokenPost]
        public ActionResult SubmitESTATEMENT(FormCollection formCollection)
        {
            if (System.Web.HttpContext.Current.Session[Variables._varEncryptedKey] == null)
            {
                return SessionExpired();
            }

            var formData = DecryptObject(formCollection[PAYLOAD]);

            // decrypt from js
            string randomKey = System.Web.HttpContext.Current.Session[Variables._varEncryptedKey].ToString();
            string MaxSubmit = AESEncrytDecry.DecryptStringAES(randomKey, formData["MaxSubmit"]);

            ESTATEMENT oESTATEMENT = new ESTATEMENT();

            var culture = new System.Globalization.CultureInfo(SC.Context.Language.Name);
            var properties = oESTATEMENT.GetType().GetProperties();
            for (int i = 0; i < properties.Length; i++)
            {
                try
                {
                    if (!string.IsNullOrWhiteSpace(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name])))
                    {
                        properties[i].SetValue(oESTATEMENT, Convert.ChangeType(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name]), properties[i].PropertyType, culture), null);
                    }
                }
                catch { /* just continue ignore this error */ }
            }
            oESTATEMENT.IDESTATEMENT = Guid.NewGuid();
            oESTATEMENT.CREATED = DateTime.Now;

            bool result = SubmitData(oESTATEMENT, MaxSubmit);
            return Json(new { success = result });
        }
    }
}