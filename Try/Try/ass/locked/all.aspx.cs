using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try.ass.locked
{
    public partial class all : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_Operation")
            {
                string uid = this.GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text;

                string fname="";
                string lname = "";
                string email = "";
                string pwd = "";
                string sex = "";
                string nation = "";
                string food = "";
                string techs = "";
                string url = "";
                //get user details from db
                SqlConnection con;
                string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(ConString);
                con.Open();
                string sql = "select * from [dbo].[Table] where [userid]=" + uid;
                SqlCommand com = new SqlCommand(sql, con);
                string dbpasswd = null;
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    dbpasswd = dr["password"].ToString();
                    fname = dr["fname"].ToString();
                    lname = dr["lname"].ToString();
                    email = dr["email"].ToString();
                    pwd = dr["password"].ToString();
                    sex = dr["sex"].ToString();
                    nation = dr["nation"].ToString();
                    food = dr["food"].ToString();
                    techs = dr["techs"].ToString();
                    url = dr["url"].ToString();
                }
                con.Close();
                this.modaluid.InnerText = uid;
                this.modalfname.InnerText = fname;
                this.modallname.InnerText = lname;
                this.modalemail.InnerText = email;
                this.modalpwd.InnerText = pwd;
                this.modalsex.InnerText = sex;
                this.modalnation.InnerText = nation;
                this.modalfood.InnerText = food;
                this.modaltechs.InnerText = techs;
                this.Span1.InnerText = url;

                Response.Write("<script src='https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js'></script>");
                Response.Write("<script>"
                    + "$(function(){"
                    + "$('#myModal').modal('toggle');"
                    + "});</script>");
            }
        }
    }
}