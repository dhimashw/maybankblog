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

    //[EnableCorsForSitecore]
    public class NewsAnnouncementController : Controller
    {
        public NewsAnnouncementController(INewsAnnouncementRepository newsAnnouncementRepository)
        {
            this.Repository = newsAnnouncementRepository;
        }

        private INewsAnnouncementRepository Repository { get; }

        public ActionResult NewsAnnouncementList()
        {
            var items = this.Repository.GetLatestNews(RenderingContext.Current.Rendering.Item,3);
            return this.View("NewsAnnouncement", items);
        }

        public ActionResult NewsList()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            var listItems = new PagedData<Data.Items.Item>();
            if (_category != string.Empty)
            {
                items = this.Repository.getNewsItemByCategory(items, _category);
            }
            
            items = items == null ? new List<Item>() : items;
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("NewsList", listItems);
        }
        public ActionResult CorporateLatestNews()
        {
            string _category = Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId] != null ? Request.QueryString[Sitecore.Feature.Library.Helper.Variables._categoryId].ToLower() : string.Empty;
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 4);
            IEnumerable<Item> items = this.Repository.Get(RenderingContext.Current.Rendering.Item);
            var listItems = new PagedData<Data.Items.Item>();
            if (_category != string.Empty)
            {
                items = this.Repository.getNewsItemByCategory(items, _category);
            }

            items = items == null ? new List<Item>() : items;
            if (items != null)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("LatestNewsCorporate", listItems);
        }
        public ActionResult CustomerEducationList()
        {
            var PageSize = RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 8);
            var items = this.Repository.GetCustomerEducation(RenderingContext.Current.Rendering.Item);
            var listItems = new PagedData<Data.Items.Item>();
            if (items != null && items.Count() > 0)
            {
                listItems.Data = items.Take(PageSize);
                listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
                listItems.CurrentPage = 1;
                listItems.PageSize = PageSize;
                listItems.DataSourceID = RenderingContext.Current.Rendering.Item.ID;
            }
            return this.View("CustomerEducationList", listItems);
        }
        public ActionResult NewsListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.Get(dataSourceItem);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_NewsListItem", listItems);
        }
        public ActionResult CustomerEducationListPaging(int page, int PageSize, string id)
        {
            var listItems = new PagedData<Data.Items.Item>();

            var dataSourceItem = Sitecore.Context.Database.GetItem(new Data.ID(id));
            var items = this.Repository.GetCustomerEducation(dataSourceItem);

            listItems.Data = items.Skip(PageSize * (page - 1)).Take(PageSize);
            listItems.NumberOfPages = Convert.ToInt32(Math.Ceiling((double)items.Count() / PageSize));
            listItems.CurrentPage = page;
            listItems.DataSourceID = new Data.ID(id);
            listItems.PageSize = PageSize;

            return PartialView("_CustomerEducationListItem", listItems);
        }
    }
}