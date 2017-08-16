using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace Try
{
    public partial class login2 : System.Web.UI.Page
    {
        Boolean islogin = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = this.TexBoxName.Text;
            string pwd = this.TextBoxPWD.Text;
            string name = "user";

            SqlConnection con;
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConString);
            con.Open();
            string sql = "select * from [dbo].[Table] where [userid]=" + id;
            SqlCommand com = new SqlCommand(sql, con);
            string dbpasswd = null;
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                dbpasswd = dr["password"].ToString();
                name = dr["fname"].ToString() + " " + dr["lname"].ToString();
            }

            if (!string.IsNullOrWhiteSpace(dbpasswd))
            {
                if (dbpasswd.Equals(pwd))
                {
                    islogin = true;
                }
            }
            con.Close();
            if (islogin)
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, name, DateTime.Now
                    , DateTime.Now.AddMinutes(60), false, name, FormsAuthentication.FormsCookiePath);
                string encryptTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie newCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptTicket);
                string cookiename = newCookie.Name;
                HttpContext.Current.Response.Cookies.Add(newCookie);
                //Response.Redirect("index.aspx");
                FormsAuthentication.RedirectFromLoginPage(name, false);
            }
            else
            {
                Response.Write("<script>alert('login failed!')</script>");
            }

        }
    }
}