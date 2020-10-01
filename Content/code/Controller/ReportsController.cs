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

    //[EnableCorsForSitecore]
    public class ReportsController : Controller
    {
        public ReportsController(IReportsRepository reportsRepository)
        {
            this.Repository = reportsRepository;
        }

        private IReportsRepository Repository { get; }


        #region CompanyPresentationReport
        public ActionResult ReportsList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            int _itemPerRow = RenderingContext.Current.Rendering.GetIntegerParameter("Item Per Row", 3);
            //IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);

            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);
            //var listItems = new PagedData<string>();
            var listItems = new PagedData<Item>();

            years = years == null ? years = Enumerable.Empty<string>() : years;
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                //listItems.Data = items.Take(PageSize).ToList();
                listItems.Data = items;
                listItems.ListDataString = years.Take(PageSize).ToList();
                //listItems.Data = years.Take(PageSize).ToList();                
                //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.itemPerRow = _itemPerRow;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/ReportsList.cshtml", listItems);
        }
        public ActionResult ReportsListPaging(int page, int PageSize, string id, int _itemPerRow)
        {
            //var listItems = new PagedData<string>();
            var listItems = new PagedData<Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);
            //listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize).ToList();
            listItems.Data = items;
            listItems.ListDataString = years.Skip(PageSize * (page - 1)).Take(PageSize).ToList();
            //listItems.Data = years.Skip(PageSize * (page - 1)).Take(PageSize).ToList();            
            //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            listItems.itemPerRow = _itemPerRow;
            return this.PartialView("~/Views/AboutUs/ReportsListItem.cshtml", listItems);
        }
        #endregion

        #region YearlyReport
        public ActionResult YearlyReportsList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            var listItems = new PagedData<Item>();
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/YearlyReportsList.cshtml", listItems);
        }
        public ActionResult YearlyReportsListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);
            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.PartialView("~/Views/AboutUs/_YearlyReportsItem.cshtml", listItems);
        }
        #endregion

        #region FinancialReport
        public ActionResult FinancialReportsList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            //IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            IEnumerable<Item> items = this.Repository.GetFinancialReportItem(RenderingContext.Current.Rendering.Item);
            items = this.Repository.FilterFinancialReportsByCategory(items, _category);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);

            //var listItems = new PagedData<string>();
            var listItems = new PagedData<Item>();

            years = years == null ? years = Enumerable.Empty<string>() : years;
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                listItems.Data = items;
                listItems.ListDataString = years.Take(PageSize).ToList();
                //listItems.Data = years.Take(PageSize).ToList();                
                //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/FinancialReportsList.cshtml", listItems);
        }
        public ActionResult FinancialReportsListPaging(int page, int PageSize, string id, string categoryId)
        {
            //var listItems = new PagedData<string>();
            //string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetFinancialReportItem(dataSourceItem);
            items = this.Repository.FilterFinancialReportsByCategory(items, categoryId);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);
            listItems.Data = items;
            listItems.ListDataString = years.Skip(PageSize * (page - 1)).Take(PageSize).ToList();
            //listItems.Data = years.Skip(PageSize * (page - 1)).Take(PageSize).ToList();            
            //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.PartialView("~/Views/AboutUs/FinancialReportsItem.cshtml", listItems);
        }
        #endregion

        #region CorporateResearch
        public ActionResult CorpResearchReportsList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            //IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            IEnumerable<Item> items = this.Repository.GetCorporateResearchItem(RenderingContext.Current.Rendering.Item);
            items = this.Repository.FilterCorpResearchReportsByCategory(items, _category);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);

            //var listItems = new PagedData<string>();
            var listItems = new PagedData<Item>();

            years = years == null ? years = Enumerable.Empty<string>() : years;
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                //listItems.Data = years.Take(PageSize).ToList();                
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/CorpResearchReportsList.cshtml", listItems);
        }
        public ActionResult CorpResearchReportsListPaging(int page, int PageSize, string id, string categoryId)
        {
            //var listItems = new PagedData<string>();
            //string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var listItems = new PagedData<Item>();
            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetCorporateResearchItem(dataSourceItem);
            items = this.Repository.FilterCorpResearchReportsByCategory(items, categoryId);
            IEnumerable<string> years = this.Repository.DistinctItemsYear(items);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            //listItems.Data = years.Skip(PageSize * (page - 1)).Take(PageSize).ToList();            
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;
            return this.PartialView("~/Views/AboutUs/CorpResearchReportsItem.cshtml", listItems);
        }
        #endregion

        #region RUPS
        public ActionResult RUPSList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            //IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;

            IEnumerable<Item> items = this.Repository.GetCorporateRUPSItem(RenderingContext.Current.Rendering.Item);
            //items = this.Repository.FilterRUPSByCategory(items, _category);
            //IEnumerable<string> years = this.Repository.DistinctItemsYear(items);

            //var listItems = new PagedData<string>();
            var listItems = new PagedData<Item>();

            // years = years == null ? years = Enumerable.Empty<string>() : years;
            items = items == null ? items = new List<Item>() : items;

            if (items != null)
            {
                //listItems.Data = items.Take(PageSize).ToList();
                listItems.Data = items;
                //listItems.Data = years.Take(PageSize).ToList();                
                //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                //listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)years.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("~/Views/AboutUs/RUPSList.cshtml", listItems);
        }


        #endregion
        #region SustanibilityReports
        public ActionResult LatestSustainabilityReports()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 3);
            IEnumerable<Item> items = this.Repository.GetSustanibilityReportsList(RenderingContext.Current.Rendering.Item);


            items = this.Repository.GetLatestSustainabilityReport(items, PageSize);

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
            return this.View("~/Views/AboutUs/LatestSustainabilityReports.cshtml", listItems);
        }
        public ActionResult SustainabilityReportsList()
        {            
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.GetSustanibilityReportsList(RenderingContext.Current.Rendering.Item);            
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
            return this.View("~/Views/AboutUs/SustainibilityReportList.cshtml", listItems);
        }
        public ActionResult SustainibilityListPaging(int page, int PageSize, string id)
        {            
            var listItems = new PagedData<Data.Items.Item>();
            Item dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetSustanibilityReportsList(dataSourceItem);            

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("~/Views/AboutUs/_SustainibilityReportItem.cshtml", listItems);
        }
        #endregion
    }
}