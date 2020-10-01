namespace Sitecore.Feature.Content.Controller
{
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Library.Helper;
    using Sitecore.Foundation.SitecoreExtensions.Extensions;
    using Sitecore.Data.Items;
    using Sitecore.Data.Fields;
    using Sitecore.Feature.Content.Repositories;

    //[EnableCorsForSitecore]
    public class RepoTestController : Controller
    {
        private IRepoTestRepository repository { get; }
        MyRepository myRepo { get; }

        public RepoTestController(IRepoTestRepository irepo)
        {
            repository = irepo;
        }
        
        public ActionResult asdas()
        {
            IEnumerable<Item> items = repository.Get(Context.Database.GetItem(new Data.ID("{57919ADA-8C39-4033-B610-2761EE1158B0}")));
            return View("~/Views/Content/RepoTest.cshtml", items);
        }

        public ActionResult Index()
        {
            IEnumerable<Item> items = repository.Get(Context.Database.GetItem(new Data.ID("{57919ADA-8C39-4033-B610-2761EE1158B0}")));
            return View("~/Views/Content/RepoTest.cshtml");
        }
    }
}