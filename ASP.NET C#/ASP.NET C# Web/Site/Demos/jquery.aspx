<%@ Page Title="jQuery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jquery.aspx.cs" Inherits="Demos_jquery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <input id="Button1" type="button" value="button" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#MainContent').css('background-color', 'green')
            $('#Button1').click(function () {
                $('#MainContent').css('background-color', 'red')
                                    .animate({ width: '100px', height: '800px' })
            });
        });
    </script>
</asp:Content>

