<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Controls_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
    
        <asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        <asp:Button ID="SubmitButton" runat="server" CssClass="button" OnClick="SubmitButton_Click" Text="Submit Information" />
    
        
    
    </div>
        <asp:Label ID="Result" runat="server"></asp:Label>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
