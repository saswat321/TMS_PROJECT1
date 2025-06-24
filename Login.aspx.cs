using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_project
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //user login immp to do in below line***
            SqlCommand cmd = new SqlCommand("sp_procedure", dbcon.GetCon());
            dbcon.Opencon();

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@user_id", txtUserID.Text);

            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script> alert('Login Successfully');</script>");
                    Session["role"] = "user";
                    Session["fullname"] = dr.GetValue(0).ToString();
                    Session["username"] = dr.GetValue(1).ToString();
                    Session["status"] = dr.GetValue(3).ToString();
                }
                Response.Redirect("~/UserPage/UserHome.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid credentials...try again'); </script>");


            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sqlquery", dbcon.GetCon());
            dbcon.Opencon();

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@user_id", txtAdminID.Text.Trim());

            cmd.Parameters.AddWithValue("@password", txtAdminPass.Text.Trim());

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script> alert('Login Successfully');</script>");
                    Session["Adminrole"] = "Admin";
                    Session["Adminfullname"] = dr.GetValue(2).ToString();
                    Session["Adminusername"] = dr.GetValue(0).ToString();
                    //Session["status"] = dr.GetValue(3).ToString();
                }
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid credentials...try again'); </script>");


            }
        }
    }
}
