using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace Try.ass.locked
{
    public partial class email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string strPath = "";

        protected void SendingEmail(object sender, EventArgs e)
        {
            MailMessage newMsg = new MailMessage();

            foreach (GridViewRow gvRow in GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");

                if (cb != null && cb.Checked)
                {
                    newMsg.To.Add(new MailAddress(gvRow.Cells[2].Text, gvRow.Cells[0].Text + gvRow.Cells[1].Text));
                }
            }

            newMsg.From = new MailAddress("2472147479@qq.com");
            newMsg.Subject = txtSubject.Text;
            newMsg.SubjectEncoding = Encoding.UTF8;
            newMsg.Body = txtMessage.Text;
            newMsg.BodyEncoding = Encoding.UTF8;
            newMsg.IsBodyHtml = false;

            bool sendEmail = true;
            if (fileUpload.HasFile)
            {
                if (UpLoadFile(fileUpload.FileName))
                {
                    Attachment newAttach = new Attachment(strPath);
                    newMsg.Attachments.Add(newAttach);
                }
                else
                {
                    sendEmail = false;
                }
            }
            if (sendEmail)
            {
                try
                {
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.qq.com";
                    smtp.Port = 25;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential("2472147479@qq.com", "bwjfhdkntyznebbc");
                    smtp.Send(newMsg);
                    lblMail.Text = "Mail Successfully Sent";
                }
                catch (Exception exc)
                {
                    lblMail.Text = exc.Message;
                    txtMessage.Text = newMsg.From.Address + exc.StackTrace;
                }
            }
        }

        public bool UpLoadFile(string strFileName)
        {
            bool blnFileOK = false;
            string strExt =
              System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
            if ((strExt != ".gif") && (strExt != ".jpg"))
            {
                lblMail.Text = "Invalid File Type!! Only support the type of .gif and .jpg.";
            }
            else
            {
                blnFileOK = true;
                strPath =
                  Server.MapPath(".") + "/UploadFiles/" + strFileName;
                fileUpload.PostedFile.SaveAs(strPath);
            }
            return blnFileOK;
        }
    }
}