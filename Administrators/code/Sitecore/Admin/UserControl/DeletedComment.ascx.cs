﻿using System;
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
    public partial class DeletedComment : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            commentList.DataSource = SearchComment();
            commentList.DataBind();

            if (setTab)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "activeTab", $@"$(document).ready(function () {{ SetActiveTab('deleted-comment') }});", true);
            }
        }

        public void DisplayComment(string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200", bool setTab = false)
        {
            if (setTab)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "activeTab", $@"$(document).ready(function () {{ SetActiveTab('deleted-comment') }});", true);
            }

            if (!ValidateInput(keyword, category, start, end))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "invalidInput", $@"$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid options.'); }}, 1); }});", true);
                DisplayAllComment(false);
                return;
            }

            if (start.Trim() == "From" || start.Trim() == "") start = "01/01/2000";
            if (end.Trim() == "To" || end.Trim() == "") end = "01/01/2200";

            Regex r = new Regex(@"\d{2}/\d{2}/\d{4}");
            if(!r.IsMatch(start) || !r.IsMatch(end))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "dateError", $@"$(document).ready(function () {{ setTimeout(function() {{ alert('Please insert valid date.'); }}, 1); }});", true);
                return;
            }

            switch (category)
            {
                case "PageDisplayName":
                    {
                        commentList.DataSource = SearchCommentByPage(keyword, category, start, end);
                        commentList.DataBind();
                    }; break;
                case "Username":
                    {
                        commentList.DataSource = SearchCommentByUsername(keyword, category, start, end);
                        commentList.DataBind();
                    }; break;
                case "Content":
                    {
                        commentList.DataSource = SearchCommentByContent(keyword, category, start, end);
                        commentList.DataBind();
                    }; break;
                default: break;
            }
        }

        DataSet SearchComment(string start = "01/01/2000", string end = "01/01/2200", int isApprove = 1, int orderByApproval = 1)
        {
            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetDeletedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@keyword", "");
                SqlParameter param2 = cmd.Parameters.AddWithValue("@category", "");
                SqlParameter param3 = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param4 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataset, "result");
            }

            return dataset;
        }

        DataSet SearchCommentByPage(string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200")
        {
            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetDeletedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@keyword", keyword);
                SqlParameter param2 = cmd.Parameters.AddWithValue("@category", category);
                SqlParameter param3 = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param4 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataset, "result");
            }

            return dataset;
        }

        DataSet SearchCommentByUsername(string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200")
        {
            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetDeletedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@keyword", keyword);
                SqlParameter param2 = cmd.Parameters.AddWithValue("@category", category);
                SqlParameter param3 = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param4 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataset, "result");
            }

            return dataset;
        }

        DataSet SearchCommentByContent(string keyword = "", string category = "", string start = "01/01/2000", string end = "01/01/2200")
        {
            DataSet dataset = new DataSet();
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetDeletedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@keyword", keyword);
                SqlParameter param2 = cmd.Parameters.AddWithValue("@category", category);
                SqlParameter param3 = cmd.Parameters.AddWithValue("@start", start + " 00:00:00");
                SqlParameter param4 = cmd.Parameters.AddWithValue("@end", end + " 23:59:59");
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataset, "result");
            }

            return dataset;
        }

        void ChangeCommentStatus(string[] values, int status)
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

                SqlCommand cmd = new SqlCommand("dbo.spChangeCommentStatus", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@List", dt);
                param.SqlDbType = SqlDbType.Structured;
                SqlParameter param2 = cmd.Parameters.AddWithValue("@Stat", status);
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

        protected void BtnRestore_Click(object sender, EventArgs e)
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

                ChangeCommentStatus(uids.ToArray(), 0);
                DisplayAllComment(true);

                MyTask otherUC = this.Page.FindControl("MyTaskUC") as MyTask;
                otherUC.DisplayAllComment(false);
                ApprovedComment otherUC2 = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
                otherUC2.DisplayAllComment(false);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "error", $@"$(document).ready(function () {{ alert('Error: {ex.Message}') }});", true);
            }
        }

        protected void BtnSearchByDate_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DisplayComment(Keyword.Text, CategoryList.Text, DatePickerStart.Text, DatePickerEnd.Text, true);
                MyTask otherUC = this.Page.FindControl("MyTaskUC") as MyTask;
                otherUC.DisplayAllComment(false);
                ApprovedComment otherUC2 = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
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
                    MyTask otherUC = this.Page.FindControl("MyTaskUC") as MyTask;
                    otherUC.DisplayAllComment(false);
                    ApprovedComment otherUC2 = this.Page.FindControl("ApprovedCommentUC") as ApprovedComment;
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