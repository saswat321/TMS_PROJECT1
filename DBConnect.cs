using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;

namespace TMS_project
{
    public class DBConnect
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        public SqlConnection GetCon()
        {
            return con;
        }
        public void Opencon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
        }
        public void Closecon()
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
        }
    }
}