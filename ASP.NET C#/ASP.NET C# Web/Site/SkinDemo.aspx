﻿<%@ Page Title="Test of Skin" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinDemo.aspx.cs" Inherits="SkinDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" EnableTheming="true" Text="Button"/>
    <asp:Button ID="Button2" runat="server" Text="Button" SkinID="RedButton"/>
</asp:Content>

