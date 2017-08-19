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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, this.firstname.Text + " " + this.lastname.Text, DateTime.Now
                    , DateTime.Now.AddMinutes(60), false, this.firstname.Text + " " + this.lastname.Text, FormsAuthentication.FormsCookiePath);
                string encryptTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie newCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptTicket);
                HttpContext.Current.Response.Cookies.Add(newCookie);
                Response.Write("<script>" 
                    + "alert('registion successful!');" 
                    + "window.location.href='index.aspx';" 
                    + "</script>");
            }
           // Request.ApplicationPath;
           // this.addrecords
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uid = this.userid.Text;
            string fname = this.firstname.Text;
            string lname = this.lastname.Text;
            string email = this.email.Text;
            string passwd = this.password.Text;
            string rolesex = this.sex.SelectedValue;
            string nation = this.nation.SelectedValue;
            string foods = this.foods.SelectedValue;
            string techs = this.techs.SelectedValue;
            string url = this.url.Text;

            SqlConnection con;
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConString);
            con.Open();
            string sql = "insert into [dbo].[Table]([userid], [fname], [lname], [email], [password], [sex], [nation], [food], [techs], [url]) values('"
                + uid + "','" + fname + "','" + lname + "','" + email + "','" + passwd + "','" + sex + "','" + nation + "','" + foods + "','" + techs + "','" + url + "')";
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();          

        }
    }
}