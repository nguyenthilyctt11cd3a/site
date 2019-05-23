<%@ Page Title="Web services Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices.aspx.cs" Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="MyWebsite" type="text" />
    <input id="SayHello" type="button" value="SayHello" onclick="helloWorld();"/>
    <input id="SayHelloPageMethod" type="button"
       value="Say Hello with a Page Method"
       onclick="helloWorldPageMethod();" />
    <script type="text/javascript">
        function helloWorld() {
            var myweb = document.getElementById('MyWebsite').value;
            NameService.HelloWorld(myweb, helloWorldCallback);
        }
        function helloWorldCallback(result) {
            alert(result);
        }
        function helloWorldPageMethod() {
            var yourName = document.getElementById('MyWebsite').value;
            PageMethods.HelloWorld(yourName, helloWorldCallback);
        }
    </script>
</asp:Content>

