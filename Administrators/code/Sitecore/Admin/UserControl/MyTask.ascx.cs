using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Sitecore.Feature.Library.Helper;
using System.Text.RegularExpressions;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.UserControl
{
    public partial class MyTask : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    DisplayAllComment();
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "error-1", $@"$(document).ready(function () {{ alert('Error: {ex.Message}') }});", true);
                }
            }
        }

        public void DisplayAllComment(bool setTab = false)
        {
            commentList.DataSource = SearchComment(selectAll:true);
            commentList.DataBind();

            if (setTab)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "activeTab", $@"$(document).ready(function () {{ SetActiveTab('my-task') }});", true);
            }
        }

        public void DisplayComment(string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200", bool setTab = false)
        {
            if (setTab)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "activeTab", $@"$(document).ready(function () {{ SetActiveTab('my-task') }});", true);
            }

            if (!ValidateInput(keyword, category, start, end))
            {
                DisplayAllComment(false);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "invalidInput", $@"$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});", true);
                return;
            }

            if (start.Trim() == "From" || start.Trim() == "") start = "01/01/2000";
            if (end.Trim() == "To" || end.Trim() == "") end = "01/01/2200";

            Regex r = new Regex(@"\d{2}/\d{2}/\d{4}");
            if (!r.IsMatch(start) || !r.IsMatch(end))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "dateError", $@"$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});", true);
                return;
            }

            commentList.DataSource = SearchComment(false, keyword, category, start, end);
            commentList.DataBind();
        }

        DataSet SearchComment(bool selectAll, string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200")
        {
            // @selectAll bit,
            // @selectDraft bit, my-task = 1
            // @keyword varchar(max),
            // @category varchar(max),
            // @start datetime,
            // @end datetime

            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetComments", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@selectAll", selectAll);
                SqlParameter param1 = cmd.Parameters.AddWithValue("@selectDraft", 1);
                SqlParameter param2 = cmd.Parameters.AddWithValue("@keyword", keyword);
                SqlParameter param3 = cmd.Parameters.AddWithValue("@category", category);
                SqlParameter param4 = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param5 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataset, "result");
            }

            return dataset;
        }

        void ChangeCommentApproval(string[] values, int approval)
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
                SqlParameter param2 = cmd.Parameters.AddWithValue("@Stat", approval);
                param2.SqlDbType = SqlDbType.Bit;
                param.TypeName = "dbo.UIDList";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        bool ValidateInput(string keyword, string category, string start, string end)
        {
            if (keyword.Trim() == "Search..." || keyword.Trim() == "") return false;

            string[] categories = new string[] { "PageDisplayName", "Username", "Comment" };
            bool valid = false;
            foreach (string str in categories)
            {
                if (str == category.Trim()) valid = true;
            }
            if (!valid) return false;

            return true;
        }

        protected void BtnApprove_Click(object sender, EventArgs e)
        {
            try
            {
                List<string> uids = new List<string>();
                foreach (RepeaterItem item in commentList.Items)
                {
                    CheckBox cb = (CheckBox)item.FindControl("commentCheckbox");
                    if (cb.Checked)
                    {
                        HiddenField commentID = (HiddenField)item.FindControl("commentID");
                        uids.Add(commentID.Value);
                    }
                }

                ChangeCommentApproval(uids.ToArray(), 1);
                DisplayAllComment(true);

                ApprovedComment otherUC = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
                otherUC.DisplayAllComment(false);
                DeletedComment otherUC2 = this.Page.FindControl("DeletedCommentUC") as DeletedComment;
                otherUC2.DisplayAllComment(false);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "error", $@"$(document).ready(function () {{ alert('Error: {ex.Message}') }});", true);
            }
        }

        protected void BtnReject_Click(object sender, EventArgs e)
        {
            try
            {
                List<string> uids = new List<string>();
                foreach (RepeaterItem item in commentList.Items)
                {
                    CheckBox cb = (CheckBox)item.FindControl("commentCheckbox");
                    if (cb.Checked)
                    {
                        HiddenField commentID = (HiddenField)item.FindControl("commentID");
                        uids.Add(commentID.Value);
                    }
                }

                ChangeCommentApproval(uids.ToArray(), 0);
                DisplayAllComment(true);

                ApprovedComment otherUC = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
                otherUC.DisplayAllComment(false);
                DeletedComment otherUC2 = this.Page.FindControl("DeletedCommentUC") as DeletedComment;
                otherUC2.DisplayAllComment(false);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "error", $@"$(document).ready(function () {{ alert('Error: {ex.Message}') }});", true);
            }
        }

        protected void BtnSearchByDate_Click(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                DisplayComment(Keyword.Text, CategoryList.Text, DatePickerStart.Text, DatePickerEnd.Text, true);
                ApprovedComment otherUC = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
                otherUC.DisplayAllComment(false);
                DeletedComment otherUC2 = this.Page.FindControl("DeletedCommentUC") as DeletedComment;
                otherUC2.DisplayAllComment(false);
            }
        }

        protected void BtnShowAll_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                try
                {
                    DisplayAllComment(true);
                    ApprovedComment otherUC = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
                    otherUC.DisplayAllComment(false);
                    DeletedComment otherUC2 = this.Page.FindControl("DeletedCommentUC") as DeletedComment;
                    otherUC2.DisplayAllComment(false);
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "load", $@"$(document).ready(function () {{ alert('Error: {ex.Message}') }});", true);
                }
            }
        }
    }
}