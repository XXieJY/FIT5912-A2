using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Try
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            HttpCookie authcookie = Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authcookie != null)
            {
                FormsAuthenticationTicket authticket = FormsAuthentication.Decrypt(authcookie.Value);
                string[] uid = authticket.UserData.Split(new char[] { ',' });
                Context.User = new GenericPrincipal(Context.User.Identity, uid);
            }
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}