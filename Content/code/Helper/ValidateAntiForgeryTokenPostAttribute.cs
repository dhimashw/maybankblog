using System;
using System.Net;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using Sitecore.Feature.Content.Models;
namespace Sitecore.Feature.Content.Helper
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = true)]
    public class ValidateAntiForgeryTokenPostAttribute : AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            var request = filterContext.HttpContext.Request;

            //  Only validate POSTs
            if (request.HttpMethod == WebRequestMethods.Http.Post)
            {
                //  Ajax POSTs and normal form posts have to be treated differently when it comes
                //  to validating the AntiForgeryToken
                if (request.IsAjaxRequest())
                {
                    var antiForgeryCookie = request.Cookies[AntiForgeryConfig.CookieName];

                    var cookieValue = antiForgeryCookie != null
                        ? antiForgeryCookie.Value
                        : null;

                    if (request.Headers["__RequestVerificationToken"] != null)
                        AntiForgery.Validate(cookieValue, request.Headers["__RequestVerificationToken"]);
                    else
                    {
                        filterContext.HttpContext.Response.StatusCode = 550;
                        filterContext.HttpContext.Response.Write(new JavaScriptSerializer().Serialize(new ReturnErrorData
                        {
                            responseCode = "401",
                            descErrorCode = "Modifying CSRF Token Detected..",
                            descErrorCodeEN = "Modifying CSRF Token Detected.."
                        }));
                        filterContext.HttpContext.Response.TrySkipIisCustomErrors = true;
                        filterContext.Result = new EmptyResult();
                        filterContext.HttpContext.Response.End();
                    }
                }
                else
                {
                    new ValidateAntiForgeryTokenAttribute()
                        .OnAuthorization(filterContext);
                }
            }
        }
    }
}