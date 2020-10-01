namespace Sitecore.Feature.Content.Controller
{
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Library.Helper;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Feature.Content.Repositories;
    using Sitecore.Data.Items;

    //[EnableCorsForSitecore]
    public class SponsorController : Controller
    {
        private IBlogRepository Repository { get; }

        public SponsorController(IBlogRepository blogRepository)
        {
            Repository = blogRepository;
        }

        public ActionResult GetSponsorMain(int? page, int? itemPerPage = null, string id = null)
        {
            bool isDefault = false;
            if (!page.HasValue || !itemPerPage.HasValue || string.IsNullOrEmpty(id)) isDefault = true;

            int currentPage = page.HasValue ? (int)page : 1;
            int pageSize = itemPerPage.HasValue ? (int)itemPerPage : RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 6);
            Item contextItem = null;

            if (string.IsNullOrEmpty(id)) contextItem = RenderingContext.Current.Rendering.Item;
            else contextItem = Context.Database.GetItem(new Data.ID(id));

            IEnumerable<Item> data = contextItem.GetChildren().AsEnumerable();
            int totalPages = (data.Count() - 1) / pageSize + 1;
            data = data.Skip((currentPage - 1) * pageSize).Take(pageSize);
            PagedData<Item> pagedData = new PagedData<Item>
            {
                Data = data,
                NumberOfPages = totalPages,
                PageSize = pageSize,
                CurrentPage = currentPage,
                DataSourceID = contextItem.ID
            };

            if (isDefault) return View("~/Views/Content/MBMSponsorSublayout.cshtml", pagedData);
            return View("~/Views/Content/MBMSponsorPartial.cshtml", pagedData);
        }

        public ActionResult GetFoodSiteBucket(int? page, int? itemPerPage = null, string id = null)
        {
            bool isDefault = false;
            if (!page.HasValue || !itemPerPage.HasValue || string.IsNullOrEmpty(id)) isDefault = true;

            int currentPage = page.HasValue ? (int)page : 1;
            int pageSize = itemPerPage.HasValue ? (int)itemPerPage : RenderingContext.Current.Rendering.GetIntegerParameter("Max Item", 6);
            Item contextItem = null;

            if (string.IsNullOrEmpty(id)) contextItem = RenderingContext.Current.Rendering.Item;
            else contextItem = Context.Database.GetItem(new Data.ID(id));
            
            IEnumerable<Item> data = Repository.GetFoodSite(contextItem);
            int totalPages = (data.Count() - 1) / pageSize + 1;
            data = data.Skip((currentPage - 1) * pageSize).Take(pageSize);
            PagedData<Item> pagedData = new PagedData<Item>
            {
                Data = data,
                NumberOfPages = totalPages,
                PageSize = pageSize,
                CurrentPage = currentPage,
                DataSourceID = contextItem.ID
            };

            if (isDefault) return View("~/Views/Website/Sublayouts/MBMFoodSiteSublayout.cshtml", pagedData);
            return View("~/Views/Content/MBMFoodSitePartial.cshtml", pagedData);
        }
    }
}