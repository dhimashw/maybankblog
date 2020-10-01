namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Content.Repositories;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Library.Helper;
    using System.Linq;
    using System;
    using System.Collections.Generic;
    using Sitecore.Feature.Library.Models;
    using System.Text;
    using Sitecore.Feature.Form.Repositories;
    using SC = Sitecore;
    using Sitecore.Foundation.Dictionary.Extensions;
    using System.Web.Script.Serialization;

    //[EnableCorsForSitecore]
    public class PropertiBekasController : Controller
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

        private IPBRepository Repository { get; }
        public PropertiBekasController(IPBRepository propertiBekasRepository)
        {
            this.Repository = propertiBekasRepository;
        }

        public IEnumerable<Data.Items.Item> filterQuery(IEnumerable<Data.Items.Item> items, string _typeBangunan, string _lokasi)
        {
            if (!string.IsNullOrEmpty(_typeBangunan))
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PropertiBekas.Fields.TypeBangungan].Value.ToLower() == _typeBangunan.ToLower());
            }

            if (!string.IsNullOrEmpty(_lokasi))
            {
                items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.PropertiBekas.Fields.Lokasi].Value.ToLower() == _lokasi.ToLower());
            }
            return items;
        }

        public ActionResult PropertiBekasListPaging(int page, int PageSize, string Bucket, string TypeBangunan, string Lokasi)
        {
            var listItems = new PagedData<Data.Items.Item>();
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID(Bucket)));
            items = filterQuery(items, TypeBangunan, Lokasi);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.PageSize = PageSize;

            return PartialView("PropertiBekasListItem", listItems);
        }

        public ActionResult ModalLebihLanjut(string ItemSelected)
        {
            var listItems = new PagedData<Data.Items.Item>();
            listItems.DataSourceID = new Data.ID(ItemSelected);

            return PartialView("ModalLihatLebih", listItems);
        }

        public ActionResult ModalHubungiKami(string ItemSelected)
        {
            var listItems = new PagedData<Data.Items.Item>();
            listItems.DataSourceID = new Data.ID(ItemSelected);

            return PartialView("ModalHubungiKami", listItems);
        }

        [NonAction]
        public void Add(PropertiBekas oPropertiBekas)
        {
            using (var db = Factory.DbEntities)
            {
                try
                {
                    //// OBSOLET
                    //db.PropertiBekas.Add(oPropertiBekas);
                    //db.SaveChanges();

                    oPropertiBekas.Insert(db);
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                    //lg.LogWrite(sb.ToString());
                }
            }
        }

        [NonAction]
        public int CountEmail(PropertiBekas oPropertiBekas)
        {
            int totalEmail = 0;
            using (var db = Factory.DbEntities)
            {
                try
                {
                    //// OBSOLET
                    //totalEmail = db.PropertiBekas.Where(x => x.EMAIL.ToLower().Contains(oPropertiBekas.EMAIL.ToLower()))
                    //                .Where(x => x.NAMAPROPERTI.ToLower().Contains(oPropertiBekas.NAMAPROPERTI.ToLower()))
                    //                .Where(x => x.CREATED == DateTime.Today)
                    //                .Count();

                    totalEmail = oPropertiBekas.Get(db).Count();
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine(ex.Message);
                    //lg.LogWrite(sb.ToString());
                }
            }
            return totalEmail;
        }

        [NonAction]
        public EmailContent GetEmailContent(string itemId)
        {
            Sitecore.Data.Items.Item items = Sitecore.Context.Database.GetItem(new Data.ID(itemId));
            string _emailFrom = items.Fields[Sitecore.Feature.Library.Templates.GeneralEmail.Fields.EmailFrom].Value;
            string _subject = items.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value;
            string _body = items.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Content].Value;
            EmailContent content = new EmailContent()
            {
                Subject = _subject,
                EmailBody = _body

            };
            return content;
        }

        [NonAction]
        public bool SubmitData(PropertiBekas oPropertiBekas,string MaxSubmit)
        {

            int countEmail = CountEmail(oPropertiBekas);

            if (countEmail >= int.Parse(MaxSubmit))
            {
                return false;
            }
            else
            {
                //methodsendEmail
                EmailContent EmailContent = GetEmailContent(Sitecore.Feature.Library.Helper.Variables._emailTemplatePropertyBekas); //Email 
                EmailContent.EmailBody = EmailContent.EmailBody.Replace("[Customer Name]", oPropertiBekas.EMAIL);
                Sitecore.Feature.Library.Helpers.LibraryHelpers.SendEmail(oPropertiBekas.EMAIL, EmailContent.EmailFrom,EmailContent.Subject, EmailContent.EmailBody); //Get Email To
                Add(oPropertiBekas);
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
        public ActionResult SubmitPropertiBekas(FormCollection formCollection)
        {
            if (System.Web.HttpContext.Current.Session[Variables._varEncryptedKey] == null)
            {
                return SessionExpired();
            }

            var formData = DecryptObject(formCollection[PAYLOAD]);

            // decrypt from js
            string randomKey = System.Web.HttpContext.Current.Session[Variables._varEncryptedKey].ToString();
            string MaxSubmit = AESEncrytDecry.DecryptStringAES(randomKey, formData["MaxSubmit"]);

            PropertiBekas PropertiBekas = new PropertiBekas();
            var culture = new System.Globalization.CultureInfo(SC.Context.Language.Name);
            var properties = PropertiBekas.GetType().GetProperties();
            for (int i = 0; i < properties.Length; i++)
            {
                try
                {
                    if (!string.IsNullOrWhiteSpace(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name])))
                    {
                        properties[i].SetValue(PropertiBekas, Convert.ChangeType(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name]), properties[i].PropertyType, culture), null);
                    }
                }
                catch { /* just continue ignore this error */ }
            }

            PropertiBekas.IDPROPERTIBEKAS = Guid.NewGuid();
            PropertiBekas.CREATED = DateTime.Now;
            SubmitData(PropertiBekas, MaxSubmit);
            return Json(new { success = true });
        }

        // GET: PropertiBekas
        public ActionResult Index()
        {
            string _typeBangunan = Request.QueryString["typebangunan"] != null ? Request.QueryString["typeBangunan"].ToLower() : string.Empty;
            string _lokasi = Request.QueryString["lokasi"] != null ? Request.QueryString["lokasi"].ToLower() : string.Empty;

            int PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            //GetDataFrom Promotion Repository
            IEnumerable<Data.Items.Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = filterQuery(items, _typeBangunan, _lokasi);
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }

            return View(listItems);
        }
    }
}