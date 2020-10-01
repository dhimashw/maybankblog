namespace Sitecore.Feature.Content.Controller
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Library.Helper;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Data.Items;
    using Sitecore.Data.Fields;

    public class GalleryController : Controller
    {
        public ActionResult GetGalleryData(int? page, int? itemPerPage = null, string id = null)
        {
            int currentPage = page.HasValue ? (int)page : 1;
            int pageSize = itemPerPage.HasValue ? (int)itemPerPage : RenderingContext.Current.Rendering.GetIntegerParameter("Item Per Page", 4);
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

            return View("~/Views/Content/MBMGalleryDetail.cshtml", pagedData);
        }

        public ActionResult GetGalleryDataUpdate(string page, int itemPerPage, string id = null)
        {
            int currentPage = int.Parse(page);
            int pageSize = itemPerPage;
            Item contextItem = Context.Database.GetItem(new Data.ID(id));

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

            return View("~/Views/Content/MBMGalleryDetail.cshtml", pagedData);
        }
    }
}