namespace Sitecore.Feature.Content.Controller
{
    using System.Web.Mvc;
    using Sitecore.Mvc.Presentation;
    using Sitecore.Feature.Library.Helper;

    //[EnableCorsForSitecore]
    public class BannerController : Controller
    {
        [HttpPost]
        public ActionResult SavingAccount(string IdItem)
        {
            bool status = true;
            IdItem.Replace(',', ';');
            Session[Library.Helper.Variables._sessionItemsIdCreditCard] = IdItem;
            return Json(new { status, IdItem }, JsonRequestBehavior.AllowGet);
        }
    }
}