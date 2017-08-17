<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="all.aspx.cs" Inherits="Try.ass.locked.all" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="css/gridview.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding:50px 0px; text-align:center; height:800px;">
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tryConnectionString %>" SelectCommand="SELECT * FROM [Table]" ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="false" DataKeyNames="userid"
            DataSourceID="sqlDataSource" OnRowCommand="GridView_OnRowCommand">
            <FooterStyle CssClass="GridViewFooterStyle" />
            <RowStyle CssClass="GridViewRowStyle" />   
            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
            <PagerStyle CssClass="GridViewPagerStyle" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" />
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="user id" SortExpression="userid" HeaderStyle-CssClass="gridheader"/>
                <asp:BoundField DataField="fname" HeaderText="first name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="last name" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="user email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"/>
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"/>
                <asp:BoundField DataField="nation" HeaderText="nation" SortExpression="nation"/>
                <asp:BoundField DataField="food" HeaderText="favorite foods" SortExpression="food" HeaderStyle-CssClass="gridheader"/>
                <asp:BoundField DataField="techs" HeaderText="favorite baking techs" SortExpression="techs" HeaderStyle-CssClass="gridheader" />
                <asp:HyperLinkField DataTextField="url" HeaderText="client url" DataNavigateUrlFields="url" HeaderStyle-CssClass="gridheader" />
                <asp:ButtonField ButtonType="Button" Text="View" HeaderText="View Details" CommandName="Btn_Operation" />
            </Columns>
          </asp:GridView>
     </div>
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
		    <div class="modal-content">
			    <div class="modal-header">
				    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					    &times;
				    </button>
				    <h4 class="modal-title" id="myModalLabel">
					    Customer details
				    </h4>
			    </div>
			    <div class="modal-body">
				    <p>User id: <span id="modaluid" runat="server"></span></p>
                    <p>first name: <span id="modalfname" runat="server"></span></p>
                    <p>last name: <span id="modallname" runat="server"></span></p>
                    <p>email: <span id="modalemail" runat="server"></span></p>
                    <p>password: <span id="modalpwd" runat="server"></span></p>
                    <p>sex: <span id="modalsex" runat="server"></span></p>
                    <p>nation: <span id="modalnation" runat="server"></span></p>
                    <p>food: <span id="modalfood" runat="server"></span></p>
                    <p>techs: <span id="modaltechs" runat="server"></span></p>
                    <p>url: <span id="Span1" runat="server"></span></p>
			    </div>
			    <div class="modal-footer">
				    <button type="button" class="btn btn-default" data-dismiss="modal">close
				    </button>
			    </div>
		    </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
     </div>
    <div class="sourcecontainer" style="position:absolute; bottom:0px;">
        <div class="getSourceItem"><a href="#" style="color:white;" target="_blank">Calendar</a></div>
        <div class="getSourceItem"><a href="source.aspx?filename=all.aspx" style="color:white;">Display Records</a></div>
    </div>
</asp:Content>
