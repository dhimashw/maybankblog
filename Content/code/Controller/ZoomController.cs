namespace Sitecore.Feature.Content.Controller
{
    using Sitecore.Feature.Content.Models;
    using Sitecore.Mvc.Presentation;
    using System;
    using System.Security.Cryptography;
    using System.Web.Mvc;

    public class ZoomController : Controller
    {
        // GET: Zoom
        // GET: Zoom
        public ActionResult Zoom()
        {
            string apiKey = "XZLoLzk2S6G-eAjwmlRjdQ";
            string apiSecret = "JhgWN5YTEJ6NoWANXIMusSOKv6JY2AJOyvod";
            //string meetingNumber = "72487077366";

            string dtParameter = RenderingContext.Current.Rendering.Parameters["Datasource"];
            var thankyou_page_item = Sitecore.Context.Database.GetItem(dtParameter);
            //var thankyou_page_item = Sitecore.Context.Database.GetItem(new Sitecore.Data.ID("{64074570-1803-4D35-80A7-071571247B40}"));
            //var thanksurl = Sitecore.Feature.Library.Helper.Core.getGeneralLink(thankyou_page_item.Fields[Sitecore.Feature.Library.Templates.GeneralUrl.Fields.Url]);            
            string meetingNumber = thankyou_page_item.Fields[Sitecore.Feature.Library.Templates.GeneralValue.Fields.Title].Value;

            String ts = (ToTimestamp(DateTime.UtcNow.ToUniversalTime()) - 30000).ToString();
            string role = "0";
            string token = GenerateToken(apiKey, apiSecret, meetingNumber, ts, role);

            ZoomModel zoom = new ZoomModel();
            zoom.signature = token;
            zoom.meetingPwd = "";
            zoom.meetingNumber = meetingNumber;
            zoom.apiKey = apiKey;
            return View(zoom);
        }

        public long ToTimestamp(DateTime value)
        {
            long epoch = (value.Ticks - 621355968000000000) / 10000;
            return epoch;
        }

        public string GenerateToken(string apiKey, string apiSecret, string meetingNumber, string ts, string role)
        {
            char[] padding = { '=' };

            string message = String.Format("{0}{1}{2}{3}", apiKey, meetingNumber, ts, role);
            apiSecret = apiSecret ?? "";
            var encoding = new System.Text.ASCIIEncoding();
            byte[] keyByte = encoding.GetBytes(apiSecret);
            byte[] messageBytesTest = encoding.GetBytes(message);
            string msgHashPreHmac = System.Convert.ToBase64String(messageBytesTest);
            byte[] messageBytes = encoding.GetBytes(msgHashPreHmac);
            using (var hmacsha256 = new HMACSHA256(keyByte))
            {
                byte[] hashmessage = hmacsha256.ComputeHash(messageBytes);
                string msgHash = System.Convert.ToBase64String(hashmessage);
                string token = String.Format("{0}.{1}.{2}.{3}.{4}", apiKey, meetingNumber, ts, role, msgHash);
                var tokenBytes = System.Text.Encoding.UTF8.GetBytes(token);
                return System.Convert.ToBase64String(tokenBytes).TrimEnd(padding);
            }
        }
    }
}