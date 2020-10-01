using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Sitecore.Feature.Library;
using Sitecore.Feature.Library.Helpers;
using Sitecore.Feature.Library.Helper;
using System.Threading;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.UserControl
{
    public partial class DebugDashboard : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DisplayApprovedComment();
            }
        }

        public void DisplayApprovedComment(string start = "01/01/1990", string end = "01/01/2099")
        {
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetApprovedCommentByDate", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param2 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds, "zxc");
                commentListDebug.DataSource = ds.Tables["zxc"];
                commentListDebug.DataBind();
            }
        }

        void DisapproveComment(string[] values)
        {
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ID", typeof(string));
                if (values.Count() != 0)
                {
                    foreach (string str in values)
                    {
                        dt.Rows.Add(str);
                    }
                }

                SqlCommand cmd = new SqlCommand("dbo.spChangeCommentApproval", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@List", dt);
                param.SqlDbType = SqlDbType.Structured;
                SqlParameter param2 = cmd.Parameters.AddWithValue("@Stat", 0);
                param2.SqlDbType = SqlDbType.Bit;
                param.TypeName = "dbo.UIDList";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void BtnDisapprove_Click(object sender, EventArgs e)
        {
            List<string> uids = new List<string>();
            foreach (RepeaterItem item in commentListDebug.Items)
            {
                CheckBox cb = (CheckBox)item.FindControl("commentCheckboxDebug");
                if (cb.Checked)
                {
                    HiddenField commentID = (HiddenField)item.FindControl("commentIDDebug");
                    uids.Add(commentID.Value);
                }
            }

            DisapproveComment(uids.ToArray());
            DisplayApprovedComment();

            MyTask otherUC = this.Page.FindControl("MyTaskUC") as MyTask;
            otherUC.DisplayAllComment(false);
        }

        protected void BtnSearchByDate_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DisplayApprovedComment(DatePickerDebugStart.Text, DatePickerDebugEnd.Text);
                #region Progress Bar
                string script = $@"$(document).ready(function () {{ alert('Start: {DatePickerDebugStart.Text} End: {DatePickerDebugEnd.Text}') }});";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "load", script, true);
                #endregion
            }
        }

        protected void BtnShowAll_Click(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                DisplayApprovedComment();
                MyTask otherUC = this.Page.FindControl("MyTaskUC") as MyTask;
                otherUC.DisplayAllComment(false);
            }
        }
    }
}