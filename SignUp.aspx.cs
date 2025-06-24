//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Data.SqlClient;
//using System.Drawing;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using static System.Net.Mime.MediaTypeNames;

//namespace TMS_project
//{
//    public partial class SignUp : System.Web.UI.Page
//    {
//        DBConnect dbcon = new DBConnect();
//        SqlCommand cmd;
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack) {
//                Autogenerate();
//            }
//        }

//        protected void btnSignUp_Click(object sender, EventArgs e)
//        {
//            //Inserting code in database
//            if (checkDuplicate())
//            {
//                Response.Write("<script>alert('User already exit');</script>");
//            }
//            else
//            {
//                createAccount();
//            }
     
//        }
//        private void createAccount()
//        {
//            cmd = new SqlCommand("sp_CheckDuplicate", dbcon.GetCon());
//            cmd.Parameters.AddWithValue("@UserID", txtUserID.Text.Trim());
//            cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
//            dbcon.Opencon();
//            //pending code here
//        }
//        protected bool checkDuplicate()
//        {
//            cmd = new SqlCommand("sp_CheckDuplicate", dbcon.GetCon());
//            cmd.Parameters.AddWithValue("@UserID",txtUserID.Text.Trim());
//            cmd.Parameters.AddWithValue("@email",txtEmail.Text.Trim());
//            dbcon.Opencon();
//            SqlDataAdapter da = new SqlDataAdapter(cmd);
//            DataTable dt= new DataTable();  
//            da.Fill(dt);
//            if (dt.Rows.Count >= 1)
//            {
//                return true;
//            }
//            else
//            {
//                return false;
//            }
//        }
//        public void Autogenerate()
//        {
//            try
//            {
//                int r;
//                dbcon.Opencon();

//                cmd = new SqlCommand("sqlquery", dbcon.GetCon());
//                SqlDataReader dr = cmd.ExecuteReader();
//                if (dr.Read())
//                {
//                    string d = dr[0].ToString();

//                    if (d == "")

//                    {
//                        txtUserID.Text = "1001";
//                    }
//                    else
//                    {
//                        r = Convert.ToInt32(dr[0].ToString());
//                        r = r + 1;
//                        txtUserID.Text = r.ToString();

//                    }
//                    txtUserID.ReadOnly = true;  
//                }
//                dbcon.Closecon();
//            }
//            catch (Exception ex) {
//                Response.Write("<script>alert(" + ex.Message + ")</script>");
//            }
//        }
//    }
//}