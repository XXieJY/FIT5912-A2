<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="Try.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="css/aboutus.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="max-width: 830px;height:100%;">
        <div class="aboutbg" style="height:100%;">
            <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server"/>
            <asp:TreeView ID="sitemaptree" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
        </div>       
     </div>  
</asp:Content>
