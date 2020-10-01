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
    using Sitecore.Foundation.Dictionary.Extensions;
    using SC = Sitecore;
    using Sitecore.Feature.Form.Repositories;
    using System.Web.Script.Serialization;

    //using Sitecore.Feature.Content.Models;

    //[EnableCorsForSitecore]
    public class TreatsPointController : Controller
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
        public TreatsPointController(ITreatsPointRepository treatsPointRepository)
        {
            this.Repository = treatsPointRepository;
        }
        private ITreatsPointRepository Repository { get; }
        public IEnumerable<Data.Items.Item> getItemByCategory(IEnumerable<Data.Items.Item> items, string _category)
        {
            items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()))
                        .OrderByDescending(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Date].Value)
                       .ThenByDescending(x => x.Created);
            return items;
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
        public ActionResult SubmitReedemPoint(FormCollection formCollection)
        {
            if (System.Web.HttpContext.Current.Session[Variables._varEncryptedKey] == null)
            {
                return SessionExpired();
            }

            var formData = DecryptObject(formCollection[PAYLOAD]);

            // decrypt from js
            string randomKey = System.Web.HttpContext.Current.Session[Variables._varEncryptedKey].ToString();
            string itemId = AESEncrytDecry.DecryptStringAES(randomKey, formData["itemId"]);
            string name = AESEncrytDecry.DecryptStringAES(randomKey, formData["name"]);
            string creditcard = AESEncrytDecry.DecryptStringAES(randomKey, formData["creditcard"]);
            string mobilenumber = AESEncrytDecry.DecryptStringAES(randomKey, formData["mobilenumber"]);
            string email = AESEncrytDecry.DecryptStringAES(randomKey, formData["email"]);
            int maxsubmit = Convert.ToInt32(AESEncrytDecry.DecryptStringAES(randomKey, formData["maxsubmit"]));

            RedeemPoint entity = new RedeemPoint();
            var culture = new System.Globalization.CultureInfo(SC.Context.Language.Name);
            var properties = entity.GetType().GetProperties();
            for (int i = 0; i < properties.Length; i++)
            {
                try
                {
                    if (!string.IsNullOrWhiteSpace(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name])))
                    {
                        properties[i].SetValue(entity, Convert.ChangeType(AESEncrytDecry.DecryptStringAES(randomKey, formData[properties[i].Name]), properties[i].PropertyType, culture), null);
                    }
                }
                catch { /* just continue ignore this error */ }
            }

            entity.ID = Guid.NewGuid();
            entity.ItemId = itemId;
            entity.ItemName = Repository.GetItemName(itemId);
            entity.Fullname = name;
            entity.CreditCardNumber = creditcard;
            entity.MobileNumber = mobilenumber;
            entity.Email = email;
            entity.SubmitedDate = DateTime.Now;

            bool result = Repository.SubmitData(entity, maxsubmit);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        #region OBSOLED
        //[HttpPost]
        //public JsonResult SubmitReedemPoint(string itemId, string name, string creditcard, string mobilenumber, string email, int maxsubmit)
        //{

        //    //int MaxSubmit = RenderingContext.Current.Rendering.GetIntegerParameter("Max Submit",3);
        //    //int MaxSubmit = 3;
        //    RedeemPoint rp = new RedeemPoint()
        //    {
        //        ID = Guid.NewGuid(),
        //        ItemId = itemId,
        //        ItemName = Repository.GetItemName(itemId),
        //        Fullname = name,
        //        CreditCardNumber = creditcard,
        //        MobileNumber = mobilenumber,
        //        Email = email,
        //        SubmitedDate = DateTime.Now
        //    };
        //    bool result = Repository.SubmitData(rp, maxsubmit);
        //    return Json(result, JsonRequestBehavior.AllowGet);
        //} 
        #endregion
        public ActionResult TreatsPointList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            if (_category == string.Empty)
            {
                Sitecore.Data.Items.Item itemTabs = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID(Sitecore.Feature.Library.Helper.Variables._itemTreatsPointTabs));
                _category = Library.Helpers.LibraryHelpers.GetDynamicMultiList(itemTabs).FirstOrDefault().ID.ToString();
            }

            Guid idCategory = new Guid();
            _category = Guid.TryParse(_category, out idCategory) == true ? _category : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);


            //GetDataFrom Promotion Repository
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemBucketTreatsPoint));
            items = getItemByCategory(items, _category);
            items = items == null ? new List<Data.Items.Item>() : items;
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
            }
            listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            return View("TreatsPointList", listItems);
        }
        public ActionResult TreatsPointListPaging(int page, int PageSize, string id, string category)
        {
            var listItems = new PagedData<Data.Items.Item>();

            //GetDataFrom Promotion Repository
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemBucketTreatsPoint)); //ID Bucket Treats Point
            items = getItemByCategory(items, category);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_TreatsPointItem", listItems);
        }
        public ActionResult TreatsPointListPopUp(string ItemId, int maxSubmit)
        {
            var listItems = new PagedData<Data.Items.Item>();
            IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemBucketTreatsPoint)); //ID Bucket Treats Point
            items = items.Where(x => x.ID.Equals(new Data.ID(ItemId)));

            Sitecore.Data.Items.Item itemsDetails = Sitecore.Context.Database.GetItem(ItemId);
            string itemTitle = itemsDetails.Fields[Sitecore.Feature.Library.Templates.GeneralHeadingAndSubheading.Fields.Heading].Value;
            string itemPrice = itemsDetails.Fields[Sitecore.Feature.Library.Templates.TreatsPointItem.Fields.Price].Value;


            Sitecore.Data.Items.Item ItemsBucketFolder = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemBucketTreatsPoint); //ID Bucket Folder
            string title = ItemsBucketFolder.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.Title].Value;
            title = title.Replace("[VoucherName]", itemTitle);
            title = title.Replace("[Price]", itemPrice);
            string desc = ItemsBucketFolder.Fields[Sitecore.Feature.Library.Templates.Text.Fields.TextContent].Value;
            //items = Repository.GetTreatPointItem(ItemId);
            TreatsPointPopUp popUpItem = new TreatsPointPopUp()
            {
                Title = title,
                Description = desc,
                itemID = ItemId,
                MaxSubmit = maxSubmit
            };
            listItems.Data = items;

            return PartialView("_TreatsPointItemPopUp", popUpItem);
        }
    }
}