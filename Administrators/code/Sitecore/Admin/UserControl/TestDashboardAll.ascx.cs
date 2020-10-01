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
    public partial class TestDashboardAll : System.Web.UI.UserControl
    {
        //DataTable Data;
        //static string ServerMapPath;
        public bool FileExist;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayUnapprovedComment();
            }
        }

        void DisplayApprovedComment()
        {
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetApprovedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds, "ID");
                repeater1.DataSource = ds.Tables["ID"];
                repeater1.DataBind();
            }
        }

        void DisplayUnapprovedComment()
        {
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                SqlCommand cmd = new SqlCommand("dbo.spGetUnapprovedComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds, "ID");
                repeater1.DataSource = ds.Tables["ID"];
                repeater1.DataBind();
            }
        }

        protected void ApproveComment(string[] values)
        {
            using (SqlConnection conn = new SqlConnection(new Config().ConectionString))
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ID", typeof(string));
                if(values.Count() != 0)
                {
                    foreach(string str in values)
                    {
                        dt.Rows.Add(str);
                    }
                }
                else
                {
                    dt.Rows.Add("887219B9-50B4-4856-AACF-3D87340D8DA4");
                    dt.Rows.Add("9B8210C7-5E47-4554-A1D3-F2F3E676C84D");
                }
                SqlCommand cmd = new SqlCommand("dbo.hmr_approveComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@List", dt);
                param.SqlDbType = SqlDbType.Structured;
                param.TypeName = "dbo.UIDList";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
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

                SqlCommand cmd = new SqlCommand("dbo.hmr_disapproveComment", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param = cmd.Parameters.AddWithValue("@List", dt);
                param.SqlDbType = SqlDbType.Structured;
                param.TypeName = "dbo.UIDList";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void BtnDisapprove_Click(object sender, EventArgs e)
        {
            DisapproveComment(new string[] { "9B8210C7-5E47-4554-A1D3-F2F3E676C84D", "887219B9-50B4-4856-AACF-3D87340D8DA4" });
        }
    }
}