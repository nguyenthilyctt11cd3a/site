using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class Demos_ExceptionHandling : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        try
        {
            myMessage.Subject = "Minh Họa Exception HandLing";
            myMessage.Body = "Nội dung mail";
            myMessage.From = new MailAddress("ntd.domain@gmail.com");
            myMessage.To.Add(new MailAddress("ntd.domain@gmail.com"));
            SmtpClient mySmtpClient = new SmtpClient("Không Tồn Tại");
            mySmtpClient.Send(myMessage);
                Message.Text="Mail đã đc gửi";
        }
        catch(Exception err){
            Message.Text = "Một Lỗi Xuất Hiện khi gửi mail. Xin gửi lại";
            
        }
    }
}