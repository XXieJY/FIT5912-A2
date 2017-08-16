using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try.ass.locked
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
           // Response.Redirect("~/index.aspx");

            HttpCookie cookie = Request.Cookies[FormsAuthentication.FormsCookieName];
            cookie.Values.Remove(cookie.Values.GetKey(0));
            Response.AppendCookie(cookie);
            Response.Write("<script>"
                + "alert('logout successful!');"
                + "window.location.href='index.aspx';"
                + "</script>");
        }
    }
}