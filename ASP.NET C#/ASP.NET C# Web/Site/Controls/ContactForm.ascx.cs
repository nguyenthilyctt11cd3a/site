using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(PhoneHome.Text) || !string.IsNullOrEmpty(PhoneBusiness.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/Text.txt");
            string MessageBody = File.ReadAllText(fileName);
            MessageBody = MessageBody.Replace("##Name##", Name.Text);
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text);
            MessageBody = MessageBody.Replace("##HomePhone##", PhoneHome.Text);
            MessageBody = MessageBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
            MessageBody = MessageBody.Replace("##Comments##", Comments.Text);
            Message.Visible = true;
            MessageSentPara.Visible = true;
            Message.Text = MessageBody;
            FormTable.Visible = false;
        }
        System.Threading.Thread.Sleep(5000);
    }
}