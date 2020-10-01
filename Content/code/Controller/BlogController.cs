namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Content.Repositories;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Library.Helper;
    using System.Linq;
    using System;
    using Sitecore.Data.Items;
    using System.Collections.Generic;
    using Sitecore.Feature.Content.Models;
    using Sitecore.Data.Fields;
    using System.Web;
    using System.Net;
    using System.IO;
    using Newtonsoft.Json.Linq;
    using System.Configuration;
    using System.Web.Script.Serialization;
    using Sitecore.Foundation.Dictionary.Extensions;
    using System.Data.SqlClient;

    //[EnableCorsForSitecore]
    public class BlogController : Controller
    {


        public BlogController(IBlogRepository blogRepository)
        {
            this.Repository = blogRepository;
        }

        IBlogRepository Repository { get; }

        // for rendering field values
        private static Sitecore.Mvc.Helpers.SitecoreHelper sitecoreHelper;
        // lazy load sitecoreHelper
        private static Sitecore.Mvc.Helpers.SitecoreHelper SitecoreHelper
        {
            get
            {
                if (sitecoreHelper == null)
                {
                    sitecoreHelper =
                      Sitecore.Mvc.Helpers.ThreadHelper.GetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>();
                }

                if (sitecoreHelper == null)
                {
                    ViewContext viewContext = Sitecore.Mvc.Common.ContextService.Get().GetCurrent<ViewContext>();
                    Sitecore.Diagnostics.Assert.IsNotNull(viewContext, "viewContext");
                    HtmlHelper htmlHelper = new HtmlHelper(
                      viewContext,
                      new Sitecore.Mvc.Presentation.ViewDataContainer(viewContext.ViewData));
                    Sitecore.Diagnostics.Assert.IsNotNull(htmlHelper, "htmlHelper");
                    sitecoreHelper = new Sitecore.Mvc.Helpers.SitecoreHelper(htmlHelper);
                    Sitecore.Diagnostics.Assert.IsNotNull(sitecoreHelper, "sitecoreHelper");
                    Sitecore.Mvc.Helpers.ThreadHelper.SetThreadData<Sitecore.Mvc.Helpers.SitecoreHelper>(
                      sitecoreHelper);
                }

                return sitecoreHelper;
            }
        }
        public ActionResult BlogStash()
        {

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 9);

            //GetDataFrom Promotion Repository

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();

            try
            {

                IEnumerable<Data.Items.Item> items = this.Repository.Get(dataSourceItem);
                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(PageSize);
                    listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                    listItems.CurrentPage = 1;
                    listItems.PageSize = PageSize;
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return View("~/Views/MBM/BlogStash.cshtml", listItems);
        }

        public ActionResult BlogStashListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            try
            {
                IEnumerable<Data.Items.Item> items = this.Repository.Get(Sitecore.Context.Database.GetItem(new Data.ID(id)));

                listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = page;
                listItems.DataSourceID = new Data.ID(id);
                listItems.PageSize = PageSize;
            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return PartialView("~/Views/MBM/BlogStash.cshtml", listItems);
        }

        public ActionResult ArticleStash()
        {

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 9);

            //GetDataFrom Promotion Repository

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();

            try
            {

                IEnumerable<Data.Items.Item> items = this.Repository.GetArticle(dataSourceItem);
                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(PageSize);
                    listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                    listItems.CurrentPage = 1;
                    listItems.PageSize = PageSize;
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return View("~/Views/MBM/MBMArticleStash.cshtml", listItems);
        }

        public ActionResult ArticleStashListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            try
            {
                IEnumerable<Data.Items.Item> items = this.Repository.GetArticle(Sitecore.Context.Database.GetItem(new Data.ID(id)));

                listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = page;
                listItems.DataSourceID = new Data.ID(id);
                listItems.PageSize = PageSize;
            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return PartialView("~/Views/MBM/MBMArticleStash.cshtml", listItems);
        }

        public ActionResult LatestNews()
        {
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            try
            {
                Sitecore.Data.Items.Item datasourceItem = RenderingContext.Current.Rendering.Item;
                Sitecore.Data.Fields.DatasourceField dsf = datasourceItem.Fields[Sitecore.Feature.Library.Templates.LatestArticleMBM.Fields.DataSource];

                IEnumerable<Data.Items.Item> items = this.Repository.GetArticle(dsf.TargetItem);

                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(3);
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            catch (Exception) { }

            return View("~/Views/MBM/MBMLatestArticle.cshtml", listItems);
        }

        public ActionResult ImageStash()
        {

            int PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 12);
            string _Year = RenderingContext.Current.Rendering.GetIntegerParameter("Year", DateTime.Now.Year).ToString();

            //GetDataFrom Promotion Repository

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();

            try
            {

                IEnumerable<Data.Items.Item> items = this.Repository.GetGallery(dataSourceItem).Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year] != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year].Value == _Year);
                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(PageSize);
                    listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                    listItems.CurrentPage = 1;
                    listItems.PageSize = PageSize;
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return View("~/Views/MBM/MBMImageStash.cshtml", listItems);
        }

        public ActionResult ImageStashListPaging(int page, int PageSize, string id, string _Year)
        {
            var listItems = new PagedData<Data.Items.Item>();

            try
            {
                IEnumerable<Data.Items.Item> items = this.Repository.GetGallery(Sitecore.Context.Database.GetItem(new Data.ID(id))).Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year] != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year].Value == _Year);

                listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = page;
                listItems.DataSourceID = new Data.ID(id);
                listItems.PageSize = PageSize;
            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return PartialView("~/Views/MBM/MBMImageStash.cshtml", listItems);
        }

        public ActionResult LatestImageGalleryPerYear()
        {
            Sitecore.Data.Items.Item datasourceItem = RenderingContext.Current.Rendering.Item;
            Sitecore.Data.Fields.DatasourceField dsf = datasourceItem.Fields[Sitecore.Feature.Library.Templates.LatestGalleryPerYearMBM.Fields.DataSource];

            string _Year = datasourceItem.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year] != null ? datasourceItem.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year].ToString() : "2019";
            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            try
            {
                IEnumerable<Data.Items.Item> items = this.Repository.GetGallery(dsf.TargetItem).Where(x => x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year] != null && x.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields._year].Value == _Year);

                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(4);
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            catch (Exception) { }

            return View("~/Views/MBM/MBMLatestImagePerYear.cshtml", listItems);
        }

        public ActionResult PromoStash()
        {

            int PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);


            //GetDataFrom Promotion Repository

            Sitecore.Data.Items.Item dataSourceItem = RenderingContext.Current.Rendering.Item;

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();

            try
            {

                IEnumerable<Data.Items.Item> items = this.Repository.GetPromotion(dataSourceItem);
                if (items != null && items.Count() > 0)
                {
                    listItems.Data = items.Take(PageSize);
                    listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                    listItems.CurrentPage = 1;
                    listItems.PageSize = PageSize;
                }
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;

            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return View("~/Views/MBM/PromoStash.cshtml", listItems);
        }

        public ActionResult PromoStashListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            try
            {
                IEnumerable<Data.Items.Item> items = this.Repository.GetPromotion(Sitecore.Context.Database.GetItem(new Data.ID(id)));

                listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = page;
                listItems.DataSourceID = new Data.ID(id);
                listItems.PageSize = PageSize;
            }
            catch (Exception ex)
            {
                return ErrorWebservice(new JavaScriptSerializer().Serialize(new ReturnErrorData
                {
                    responseCode = "550",
                    descErrorCode = ex.Message.ToString()
                }));
            }

            return PartialView("~/Views/MBM/PromoStash.cshtml", listItems);
        }

        #region MaybankBlogComment
        public ActionResult MaybankBlogList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.GetMaybankBlog(RenderingContext.Current.Rendering.Item);


            if (_category != string.Empty)
            {
                items = this.Repository.GetMaybankBlogByCategory(items, _category);
            }
            else
            {
                Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables.MaybankBlogCategory);
                _category = Sitecore.Feature.Library.Helpers.LibraryHelpers.GetDynamicMultiList(defaultTabs).FirstOrDefault().ID.ToString();
                items = this.Repository.GetMaybankBlogByCategory(items, _category);
            }

            var listItems = new PagedData<Data.Items.Item>();
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/MaybankBlog/MaybankBlogList.cshtml", listItems);
        }
        public ActionResult MaybankBlogListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetMaybankBlog(dataSourceItem);
            items = this.Repository.GetAllMaybankBlog(items);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("~/Views/MaybankBlog/_ItemMaybankBlog.cshtml", listItems);
        }
        [Sitecore.Feature.Content.Helper.ValidateAntiForgeryTokenPost]
        [Sitecore.Feature.Content.Helper.PreventSpam]
        public ActionResult PostComment(FormCollection formData)
        {
            Sitecore.Data.Items.Item blogItem = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables.MaybankBlogItem);
            bool IsUseCaptcha = ((CheckboxField)blogItem.Fields[Sitecore.Feature.Library.Templates.BaseField.Fields.IsUseCaptcha]).Checked;

            string _userIP = string.Empty;
            GetIpValue(out _userIP);


            BlogComment blogComment = new BlogComment()
            {
                ID = Guid.NewGuid(),
                PageID = Request.Form["pageId"],
                PageDisplayName = Request.Form["pageName"],
                Username = Request.Form["username"],
                Email = Request.Form["email"],
                Comment = Request.Form["blogcomment"],
                CommentDate = DateTime.Now,
                UserIP = _userIP,
                isApproved = false,
                ApprovedDate = null,
                isDelete = false,
                DeletedDate = null
            };

            if (IsUseCaptcha && !IsReCaptchValid())
            {
                return ErrorWebservice(SitecoreExtensions.Dictionary(sitecoreHelper, "/Feature/Maybank Blog/Invalid Captcha Error Message", "Google reCaptcha validation failed"));
            }

            if (!isDelayPost(_userIP))
            {                
                this.Repository.PostComment(blogComment);
            }
            else
            {
                return ErrorWebservice(SitecoreExtensions.Dictionary(sitecoreHelper, "/Feature/Maybank Blog/Excessive Request", "Excessive Request Attempts Detected"));
            }
            return Json(SuccessResponse(), JsonRequestBehavior.AllowGet);

        }
        [Sitecore.Feature.Content.Helper.ValidateAntiForgeryTokenPost]
        public ActionResult LoadAllCommentByBlogId(string blogId, int index)
        {            
            return Json(this.Repository.LoadAllCommentByBlogId(blogId, index), JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetAllNotApprovedComment()
        {
            return Json(this.Repository.GetAllNotApprovedComment(), JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region captcha
        [NonAction]
        public ActionResult ErrorWebservice(string responseError)
        {

            Response.StatusCode = 550;
            Response.Write(responseError);
            Response.TrySkipIisCustomErrors = true;
            Response.End();
            return new EmptyResult();
        }

        [NonAction]
        public ActionResult SuccessResponse()
        {            
            Response.StatusCode = 200;
            Response.TrySkipIisCustomErrors = true;
            Response.TrySkipIisCustomErrors = true;
            Response.End();
            return new EmptyResult();
        }

        [NonAction]
        private bool IsReCaptchValid()
        {
            if (Request.Form["g-recaptcha-response"] == null)
            {
                return false;
            }

            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            Config config = new Config();
            var secretKey = config.SecretKey;
            var apiUrl = ConfigurationManager.ConnectionStrings["CaptchaValidationURL"].ToString();
            apiUrl = apiUrl + "secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(requestUri);

            try
            {
                using (WebResponse response = httpWebRequest.GetResponse())
                {
                    using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                    {
                        JObject jResponse = JObject.Parse(stream.ReadToEnd());
                        result = jResponse.Value<bool>("success");
                        
                    }
                }
            }
            catch
            {
                return false;
            }
            return result;
        }
        [NonAction]
        private void GetIpValue(out string ipAdd)
        {
            ipAdd = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (string.IsNullOrEmpty(ipAdd))
            {
                ipAdd = Request.ServerVariables["REMOTE_ADDR"];
            }
            else
            {
                ipAdd = Request.UserHostAddress;
            }
        }
        [NonAction]
        private bool isDelayPost(string userIP)
        {
            bool isDelay = false;
            using (var db = Factory.DbEntities)
            {
                try
                {
                    SqlParameter paramMaxComment = new SqlParameter("@maxcomment", SitecoreExtensions.Dictionary(sitecoreHelper, "/Feature/Maybank Blog/Max Comment", "3"));
                    SqlParameter paramDelayTime = new SqlParameter("@delayTime", SitecoreExtensions.Dictionary(sitecoreHelper, "/Feature/Maybank Blog/Delay Time", "00:03"));
                    SqlParameter paramUserIP = new SqlParameter("@userIP", userIP);
                    isDelay = Convert.ToBoolean(db.Database.SqlQuery<int>("exec sp_DELAY_BLOG_POST @maxcomment, @delayTime, @userIP", paramMaxComment, paramDelayTime, paramUserIP).FirstOrDefault());
                }
                catch (Exception ex)
                {
                    ErrorWebservice(ex.Message.ToString());
                }
                return isDelay;
            }
        }
        #endregion
    }
}