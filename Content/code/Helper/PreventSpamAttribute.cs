using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Cryptography;
using System.Web.Caching;
using System.Text;
using System.Web.Script.Serialization;
using Sitecore.Feature.Content.Models;
using System.Configuration;
using Sitecore.Foundation.Dictionary.Extensions;

namespace Sitecore.Feature.Content.Helper
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = true)]
    public class PreventSpamAttribute : ActionFilterAttribute
    {
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
        //This stores the time between Requests (in seconds)
        private readonly int DelayRequest = System.Convert.ToInt32(ConfigurationManager.ConnectionStrings["BlogSubmitDelayRequest"].ToString());
        //The Error Message that will be displayed in case of excessive Requests
        private readonly string ErrorMessage = SitecoreExtensions.Dictionary(sitecoreHelper, "/Feature/Maybank Blog/Excessive Request", "Excessive Request Attempts Detected");

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //Store our HttpContext (for easier reference and code brevity)
            var request = filterContext.HttpContext.Request;
            //Store our HttpContext.Cache (for easier reference and code brevity)
            var cache = filterContext.HttpContext.Cache;

            //Grab the IP Address from the originating Request (very simple implementation for example purposes)
            var originationInfo = request.ServerVariables["HTTP_X_FORWARDED_FOR"] ?? request.UserHostAddress;

            //Append the User Agent
            originationInfo += request.UserAgent;

            //Now we just need the target URL Information
            var targetInfo = request.RawUrl + request.QueryString;

            //Generate a hash for your strings (this appends each of the bytes of the value into a single hashed string
            var hashValue = string.Join("", MD5.Create().ComputeHash(Encoding.ASCII.GetBytes(originationInfo + targetInfo)).Select(s => s.ToString("x2")));

            //Checks if the hashed value is contained in the Cache (indicating a repeat request)
            if (cache[hashValue] != null)
            {
                //Response Error Message
                filterContext.HttpContext.Response.StatusCode = 550;
                filterContext.HttpContext.Response.Write(ErrorMessage);
                filterContext.HttpContext.Response.TrySkipIisCustomErrors = true;
                filterContext.Result = new EmptyResult();
                filterContext.HttpContext.Response.End();
            }
            else
            {
                //Adds an empty object to the cache using the hashValue to a key (This sets the expiration that will determine
                //if the Request is valid or not
                cache.Add(hashValue, "ExcessiveRequest", null, DateTime.Now.AddSeconds(DelayRequest), Cache.NoSlidingExpiration, CacheItemPriority.Default, null);
            }

            base.OnActionExecuting(filterContext);
        }
    }
}