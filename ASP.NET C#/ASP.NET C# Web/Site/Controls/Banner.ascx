<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
   <div id ="Banner1_VerticalPanel">
        <a href="http://www.microsoft.com" target="_blank" runat="server" id="VerticalLink">
            <asp:Image ID="Image1" runat="server" AlternateText ="Đây là một banner" ImageUrl="~/Images/logo2.jpg" height="170" Width="120"/>
        </a>
    </div>
</asp:Panel>
                <br />
                <br />
                <br />
<asp:Panel ID="HorizontalPanel" runat="server">
    
    <a href="http://www.microsoft.com" target="_blank" runat="server" id="HorizontalLink" />
        
        <asp:Image ID="Image2" runat="server" AlternateText ="Images" ImageUrl="~/Images/logo2.jpg"/>
    
</asp:Panel>