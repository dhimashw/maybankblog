using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.Custom
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField currentTab = (HiddenField)this.FindControl("MainCurrentTab");
            if (string.IsNullOrWhiteSpace(currentTab.Value))
            {
                string script = $@"$(document).ready(function () {{ SetActiveTab('my-task') }});";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "setTab", script, true);
            }
        }
    }
}