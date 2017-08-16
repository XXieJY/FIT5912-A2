using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.loginname.InnerText = "Hello" + " " + HttpContext.Current.User.Identity.Name + " " + "٩(๑> ₃ <)۶";
                this.logout.Style.Clear();
            }
            if (IsPostBack)
            {
                Response.Write("<script>alert('login successful')</script>");
            }

        }
    }
}