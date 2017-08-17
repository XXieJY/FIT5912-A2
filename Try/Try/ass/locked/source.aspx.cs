using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Try.ass.locked
{
    public partial class source : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = Server.MapPath(Request.QueryString["filename"]);
            FileInfo file = new FileInfo(filePath);
            // Response.Write("File name: " + Request.QueryString["filename"] + "<br />");
            // Response.Write(ReadFile(filePath));
            this.codearea.InnerText = ReadFile(filePath);

        }

        private string ReadFile(string filePath)
        {
            string fileOutput = "";
            try
            {
                StreamReader fileReader = new StreamReader(filePath);
                while (fileReader.Peek() > -1)
                {
                    fileOutput += fileReader.ReadLine() + "\n";
                }
                fileReader.Close();
            }
            catch (FileNotFoundException e)
            {
                fileOutput = e.Message;
            }
            return fileOutput;
        }
    }
}