<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="Try.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="css/aboutus.css" />
    <script>
        $(document).ready(function () {
            $("#mapcontainer").height($(window).height() - $(".commonfooter").height() - $("#myheader").height() - $(".headerbutton").height() - 60);
        }
        )
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="mapcontainer">
        <div class="aboutbg">
            <div id="padddd" style="padding-bottom:60px; padding-top:60px; padding-left: 30px;">
                <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server"/>
                <h2 style="font-family: 'Ropa Sans', sans-serif; color: #5d4d43;">site map:</h2>                
                <asp:TreeView ID="sitemaptree" runat="server" DataSourceID="SiteMapDataSource1" ForeColor="#5d4d43" Font-Size="18px" ></asp:TreeView>
            </div>
        </div>       
     </div>  
</asp:Content>
