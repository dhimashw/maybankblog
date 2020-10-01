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
    using Sitecore.Data.Fields;
    using System.Web;

    //[EnableCorsForSitecore]
    public class ArticleController : Controller
    {
        public ArticleController(IArticlesRepository articlesRepository)
        {
            this.Repository = articlesRepository;
        }

        private IArticlesRepository Repository { get; }

        #region HomeArticle
        public ActionResult ArticlesList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetArticleItemByCategory(items, _category);
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
            return this.View("ArticleList", listItems);
        }
        public ActionResult ArticlesListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            items = this.Repository.GetArticleItemByCategory(items, _category);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_ArticleItem", listItems);
        }
        public ActionResult LatestArticle()
        {
            IEnumerable<Item> items = new List<Item>();

            items = this.Repository.GetLatestArticle(RenderingContext.Current.Rendering.Item);

            items = items == null ? new List<Item>() : items;
            var listItems = new PagedData<Data.Items.Item>();
            if (items != null)
            {
                listItems.Data = items;
                listItems.NumberOfPages = 0;
                listItems.CurrentPage = 1;
                listItems.PageSize = 0;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("LatestArticle", listItems);
        }
        #endregion
        #region CSRArticle
        public ActionResult CSREventList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);

            var items = this.Repository.Get(RenderingContext.Current.Rendering.Item);

            if (_category != string.Empty)
            {
                items = this.Repository.GetCSREventItemByCategory(items, _category);
            }
            else
            {
                Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemFolderCSRProgramCategory);
                _category = Sitecore.Feature.Library.Helpers.LibraryHelpers.GetDynamicMultiList(defaultTabs).FirstOrDefault().ID.ToString();
                items = this.Repository.GetCSREventItemByCategory(items, _category);
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
            return this.View("~/Views/AboutUs/CSREventList.cshtml", listItems);
        }
        public ActionResult CSREventHighlightList()
        {
            string Renderingcategory = RenderingContext.Current.Rendering.Parameters["Category"] != null ? RenderingContext.Current.Rendering.Parameters["Category"] : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);

            if (Renderingcategory != string.Empty)
            {
                items = this.Repository.GetEvents(items, 3, Renderingcategory);
            }
            else
            {
                items = this.Repository.GetEvents(items, 3);
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
            return this.View("~/Views/AboutUs/CSREventArticleHighlight.cshtml", listItems);
        }        
        public ActionResult CSREventListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            if (_category != string.Empty)
            {
                items = this.Repository.GetCSREventItemByCategory(items, _category);
            }
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("~/Views/AboutUs/CSREventItem.cshtml", listItems);
        }
        public ActionResult CSRProgramList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;            
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);

            if (_category != string.Empty)
            {
                items = this.Repository.GetProgramItemByCategory(items, _category);
            }
            else
            {
                Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemFolderCSRProgramCategory);
                _category = Sitecore.Feature.Library.Helpers.LibraryHelpers.GetDynamicMultiList(defaultTabs).FirstOrDefault().ID.ToString();
                items = this.Repository.GetProgramItemByCategory(items, _category);
            }                        
            var listItems = new PagedData<Data.Items.Item>();
            items = items != null ? items : new List<Item>();
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/CorporateProgramList.cshtml", listItems);
        }
        public ActionResult CSRProgramListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : Sitecore.Feature.Library.Helper.Variables._defaultTabCSRProgram.ToLower();
            _category = HttpUtility.UrlDecode(_category);
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            items = this.Repository.GetProgramItemByCategory(items, _category);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.View("~/Views/AboutUs/CorporateProgramList.cshtml", listItems);
        }
        public ActionResult GetCSRProgram()
        {

            Item defaultChoice = Sitecore.Context.Data.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._itemFolderCSRProgramCategory).GetChildren().FirstOrDefault();
            string RenderingCategory = RenderingContext.Current.Rendering.Parameters["Category"] != null ? RenderingContext.Current.Rendering.Parameters["Category"] : defaultChoice.ID.ToString();

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 4);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetProgramItemByCategory(items, RenderingCategory);

            var listItems = new PagedData<Data.Items.Item>();

            items = items != null ? items : new List<Item>();

            if (items != null)
            {
                listItems.PureData = items;
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/CorporateProgramItem.cshtml", listItems);
        }
        public ActionResult GetLiterasiEdukasi()
        {
            
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetLiterasiEdukasi(items);

            var listItems = new PagedData<Data.Items.Item>();

            items = items != null ? items : new List<Item>();

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/LiterasiEdukasiProgram.cshtml", listItems);
        }
        public ActionResult GetLiterasiEdukasiList()
        {

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetLiterasiEdukasi(items);
            var listItems = new PagedData<Data.Items.Item>();

            items = items != null ? items : new List<Item>();

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/LiterasiEdukasiProgramList.cshtml", listItems);
        }
        public ActionResult CSRLiterasiEdukasiListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            items = this.Repository.GetLiterasiEdukasi(items);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.View("~/Views/AboutUs/_LiterasiEdukasiItem.cshtml", listItems);
        }
        public ActionResult GetMaybankIndFoundation()
        {

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetMaybankIndFoundation(items);

            var listItems = new PagedData<Data.Items.Item>();

            items = items != null ? items : new List<Item>();

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/MaybankIndFoundationProgram.cshtml", listItems);
        }
        public ActionResult GetMaybankIndFoundationList()
        {

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetMaybankIndFoundation(items);
            var listItems = new PagedData<Data.Items.Item>();

            items = items != null ? items : new List<Item>();

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/MaybankIndFoundationProgramList.cshtml", listItems);
        }
        public ActionResult MaybankIndFoundationListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            items = this.Repository.GetMaybankIndFoundation(items);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.View("~/Views/AboutUs/_MaybankIndFoundationProgramListItem.cshtml", listItems);
        }
        #endregion
        #region PremiereWealth
        public ActionResult PremiereWealthArticlesList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;            
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.GetPremierWealthHighlightItem(RenderingContext.Current.Rendering.Item);            
            if (_category != string.Empty)
            {
                items = this.Repository.GetArticleItemByCategory(items, _category);
            }
            else
            {
                Item defaultTabs = Sitecore.Context.Database.GetItem(Sitecore.Feature.Library.Helper.Variables._PWHighlightsTabItem);
                _category = Sitecore.Feature.Library.Helpers.LibraryHelpers.GetDynamicMultiList(defaultTabs).FirstOrDefault().ID.ToString();
                items = this.Repository.GetArticleItemByCategory(items, _category);
            }
           

            PagedData<Data.Items.Item> listItems = new PagedData<Data.Items.Item>();
            items = items == null ? items = new List<Item>() : items;
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("ArticleHighlightsList", listItems);
        }
        public ActionResult ArticlesPWHighlightListPaging(int page, int PageSize, string id, string categoryId)
        {
            //string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();
            Guid idCategory = new Guid();
            categoryId = Guid.TryParse(categoryId, out idCategory) == true ? categoryId : Sitecore.Feature.Library.Helper.Variables._defaultValuePWArticleCat;
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> items = this.Repository.Get(dataSourceItem);

            //items = items.Where(x => x.Fields[Sitecore.Feature.Library.Templates.ArticlePWHighlightItem.Fields.Category].Value.ToLower().Contains(_category.ToLower()));

            items = this.Repository.GetArticleItemByCategory(items, categoryId);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_ArticleHighlightsItem", listItems);
        }
        public ActionResult PremiereWealthLatestArticle()
        {
            IEnumerable<Item> items = new List<Item>();
            string _category = RenderingContext.Current.Rendering.Parameters["Category"];
            items = this.Repository.GetLatestPremierWealthHighlight(RenderingContext.Current.Rendering.Item, _category);
            items = items == null ? new List<Item>() : items;
            var listItems = new PagedData<Data.Items.Item>();
            if (items != null)
            {
                listItems.Data = items;
                listItems.NumberOfPages = 0;
                listItems.CurrentPage = 1;
                listItems.PageSize = 0;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("LatestArticle", listItems);
        }
        #endregion
        #region BusinessArticle
        public ActionResult GetBusinessArticle()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            var items = this.Repository.GetBusinessArticle(RenderingContext.Current.Rendering.Item);
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
            return this.View("~/Views/Article/ArticleBusinessList.cshtml", listItems);
        }
        public ActionResult BusinessArticlesListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_ArticleBusinessItem", listItems);
        }
        #endregion
        #region Syariah
        public ActionResult SyariahProgramList()
        {
            IEnumerable<Item> items = new List<Item>();
            string category = RenderingContext.Current.Rendering.Parameters["Category"] != null ? RenderingContext.Current.Rendering.Parameters["Category"] : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            items = this.Repository.GetSyariahProgramList(RenderingContext.Current.Rendering.Item, category);

            items = items == null ? new List<Item>() : items;
            var listItems = new PagedData<Data.Items.Item>();
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize)); ;
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/Syariah/SyariahProgramList.cshtml", listItems);
        }
        public ActionResult SyariahProgramListPaging(int page, int PageSize, string id)
        {
            string _category = RenderingContext.Current.Rendering.Parameters["Category"] != null ? RenderingContext.Current.Rendering.Parameters["Category"] : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            IEnumerable<Item> items = this.Repository.Get(dataSourceItem);
            items = this.Repository.GetSyariahProgramList(dataSourceItem, _category);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("~/Views/Syariah/_SyariahProgramItem.cshtml", listItems);
        }
        public ActionResult LatestSyariahProgram()
        {
            IEnumerable<Item> items = new List<Item>();
            string category = RenderingContext.Current.Rendering.Parameters["Category"] != null ? RenderingContext.Current.Rendering.Parameters["Category"] : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 4);
            items = this.Repository.GetLatestSyariahProgram(RenderingContext.Current.Rendering.Item, category);

            items = items == null ? new List<Item>() : items;
            var listItems = new PagedData<Data.Items.Item>();
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize)); ;
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/Syariah/LatestSyariahProgram.cshtml", listItems);
        }
        public ActionResult MoreFromSyariahList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.GetMoreFromSyariahItems(RenderingContext.Current.Rendering.Item);
            items = this.Repository.GetArticleItemByCategory(items, _category);
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
            return this.View("~/Views/Syariah/MoreFromSyariahList.cshtml", listItems);
        }

        public ActionResult MoreFromSyariahListPaging(int page, int PageSize, string id)
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetMoreFromSyariahItems(dataSourceItem);
            items = this.Repository.GetArticleItemByCategory(items, _category);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("~/Views/Syariah/_MoreFromSyariahItem.cshtml", listItems);
        }
        #endregion
        #region DestinationReview
        public ActionResult DestinationReviewTipsList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
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
            return this.View("DestinationReviewTipsList", listItems);
        }
        public ActionResult DestinationReviewTipsListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_DestinationReviewItem", listItems);
        }
        #endregion
    }
}