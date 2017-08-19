using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try.ass.locked
{
    public partial class displayandsearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void DisplayData(object sender, GridViewCommandEventArgs e)
        {
            listViewDataSource.SelectCommand = "select * from products where cargoid = " + GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlDataSource.SelectCommand = "select * from [products] where cargoname like '%" + textProductName.Text.Trim(' ') + "%'";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sqlDataSource.SelectCommand = "select * from [products] where origin like '%" + textProductOrigin.Text.Trim(' ') + "%'";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sqlDataSource.SelectCommand = "select * from [products]";
        }

    }
}

