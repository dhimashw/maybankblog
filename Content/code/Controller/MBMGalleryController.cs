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
    public class MBMGalleryController : Controller
    {
        public MBMGalleryController(IMBMGalleryRepository mbmGalleryRepository)
        {
            this.Repository = mbmGalleryRepository;
        }

        private IMBMGalleryRepository Repository { get; }

        public ActionResult MBMGalleryList()
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
            return this.View("MBMGalleryList", listItems);
        }
    }
}