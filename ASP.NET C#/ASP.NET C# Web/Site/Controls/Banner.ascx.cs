using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Banner : System.Web.UI.UserControl
{
    public Direction DisplayDirection { get; set; }


    protected void Page_Load(object sender, EventArgs e)
    {
        
        switch (DisplayDirection)
        {
            case Direction.Horizontal:
                HorizontalPanel.Visible = true;
                VerticalPanel.Visible = false;
                break;
            case Direction.Vertical:
                VerticalPanel.Visible = true;
                HorizontalPanel.Visible = false;
                break;
        }

    }
    
}