using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.Custom
{
    public partial class BulkUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BulkUploadAlls.FindControl("panelBranchATMLocation").Visible = true;
            BulkUploadAlls.FindControl("panelBusiness").Visible = true;
            BulkUploadAlls.FindControl("panelKPR").Visible = true;
            BulkUploadAlls.FindControl("panelKPM").Visible = true;
            BulkUploadAlls.FindControl("panelCreditCard").Visible = true;
            //BulkUploadAlls.FindControl("panelVoucherCode").Visible = true;
            BulkUploadAlls.FindControl("panelBusinessVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelCreditCardVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelLoanVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelMortgageMultifunctionVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelSavingVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelSyariahVouchers").Visible = true;
            BulkUploadAlls.FindControl("panelOthers").Visible = true;
        }
    }
}