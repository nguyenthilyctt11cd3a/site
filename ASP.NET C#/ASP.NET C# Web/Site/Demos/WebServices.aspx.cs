using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Demos_WebServices : BasePage
{
    [WebMethod()]
    public string HelloWorld(string name)
    {
        return string.Format("Hello {0}", name);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}