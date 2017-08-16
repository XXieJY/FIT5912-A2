<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="all.aspx.cs" Inherits="Try.ass.locked.all" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding:50px 0px; text-align:center;">
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tryConnectionString %>" SelectCommand="SELECT * FROM [Table]" ></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="false" DataKeyNames="userid"
            DataSourceID="sqlDataSource">
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="user id" SortExpression="userid" HeaderStyle-CssClass="gridheader"/>
                <asp:BoundField DataField="fname" HeaderText="first name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="last name" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"/>
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"/>
                <asp:BoundField DataField="nation" HeaderText="nation" SortExpression="nation"/>
                <asp:BoundField DataField="food" HeaderText="favorite foods" SortExpression="food" HeaderStyle-CssClass="gridheader"/>
                <asp:BoundField DataField="techs" HeaderText="favorite baking techs" SortExpression="techs" HeaderStyle-CssClass="gridheader" />
                <asp:HyperLinkField DataTextField="url" HeaderText="client url" DataNavigateUrlFields="url" HeaderStyle-CssClass="gridheader" />
            </Columns>
          </asp:GridView>
     </div>
</asp:Content>
