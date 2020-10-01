using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.Custom
{
    public partial class BulkUploadKPM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BulkUploadAlls.FindControl("panelKPM").Visible = true;
        }
    }
}