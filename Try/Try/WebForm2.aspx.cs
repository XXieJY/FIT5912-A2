using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Try
{
    public partial class WebForm2 : System.Web.UI.Page
    {
            SqlConnection con;
            protected void Page_Load(object sender, EventArgs e)
            {
                ConnectDB();
            }
            private void ConnectDB()
            {
                string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(ConString);
                con.Open();
                SqlCommand com = new SqlCommand();
                SqlDataReader sdr;
                string sqlstr = "select * from [dbo].[Table];";
                com.CommandText = sqlstr;
                com.Connection = con;
                sdr = com.ExecuteReader();
                while (sdr.Read())
                {
                    Response.Write(sdr["userid"].ToString() + "</br>");
                    Response.Write(sdr["fname"].ToString() + "</br>");
                }
                sdr.Close();
                sdr = null;
            }
        
    }
}