<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="displayandsearch.aspx.cs" Inherits="Try.ass.locked.displayandsearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="css/gridview.css" />
    <script>
        $(document).ready(
            function () {
                if ($(window).height() >= ($("#ContentPlaceHolder1_GridView1").height())) {
                    $("#allandsearchacontainer").height($(window).height());
                } else {
                    $("#allandsearchacontainer").height($("#ContentPlaceHolder1_GridView1").height());
                }
                $("#ContentPlaceHolder1_Button1").click(
                    function ()
                    {
                        if ($(window).height() >= ($("#ContentPlaceHolder1_GridView1").height())) {
                            $("#allandsearchacontainer").height($(window).height());
                        } else {
                            $("#allandsearchacontainer").height($("#ContentPlaceHolder1_GridView1").height());
                        }
                    }
                );
                $("#ContentPlaceHolder1_Button2").click(
                    function () {
                        if ($(window).height() >= ($("#ContentPlaceHolder1_GridView1").height())) {
                            $("#allandsearchacontainer").height($(window).height());
                        } else {
                            $("#allandsearchacontainer").height($("#ContentPlaceHolder1_GridView1").height());
                        }
                    }
                );
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align:center; margin: 0 auto; vertical-align: central; z-index:999;">
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tryConnectionString %>" ></asp:SqlDataSource>
        <asp:SqlDataSource ID="listViewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tryConnectionString %>" ></asp:SqlDataSource>
        

        <div style="margin-top:30px;">
            <div class="input-group" style="display:inline-block;">
                <asp:TextBox ID="textProductName" runat="server" placeholder="Enter products name for search." Width="200px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="searchpad"/>
            </div>
            <div class="input-group" style="display:inline-block; margin-left:-4px;" >
                <asp:TextBox ID="textProductOrigin" runat="server" placeholder="Enter products origin for search." Width="200px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" CssClass="searchpad"/>
            </div>
               
               <asp:Button ID="Button3" runat="server" Text="Click here to see all the products " OnClick="Button3_Click" CssClass="paddingforcanvas"/>
          
           
        </div>

       <div style="padding-top: 50px; padding-bottom: 50px;" id="allandsearchacontainer" >
        <div class="paddingforcanvas">
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="false" DataKeyNames="cargoid"
                    DataSourceID="sqlDataSource" OnRowCommand="DisplayData">
                    <FooterStyle CssClass="GridViewFooterStyle" />
                    <RowStyle CssClass="GridViewRowStyle" />   
                    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                    <PagerStyle CssClass="GridViewPagerStyle" />
                    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                    <HeaderStyle CssClass="GridViewHeaderStyle"/>
                    <Columns>
                        <asp:BoundField DataField="cargoid" HeaderText="cargo id" SortExpression="cargoid" HeaderStyle-CssClass="gridheader"/>
                        <asp:BoundField DataField="cargoname" HeaderText="cargo name" SortExpression="cargoname" />
                        <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />            
                        <asp:BoundField DataField="origin" HeaderText="origin" SortExpression="origin" HeaderStyle-CssClass="gridheader" />
                        <asp:HyperLinkField DataTextField="url" HeaderText="product url" DataNavigateUrlFields="url" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField HtmlEncode="False" DataField="imgurl" HeaderText="image" />
                        <asp:ButtonField ButtonType="Button" Text="Display" HeaderText="Display" CommandName="Btn_Operation" />
                    </Columns>
                </asp:GridView>
           </div>
       </div>
        
        

       <asp:ListView ID="selectedProduct" DataSourceID="listViewDataSource" runat="server">
        <ItemTemplate>
          <table>
            <tr>
              <td>
               <%# Eval("imgurl")%>
              </td>
              <td>
                <b>Cargoid: <%# Eval("cargoid") %><br />
                  Cargoname: <%# Eval("cargoname") %><br />               
                  Weight: <%# Eval("weight") %><br />
                  Price: <%# Eval("price") %><br />
                  Origin: <%# Eval("origin") %><br />
                  URL: <%# Eval("url") %>              
              </td>
            </tr>
            
          </table>
        </ItemTemplate>
      </asp:ListView>
     </div>
       <div class="sourcecontainer" style="z-index:999;">
            <div class="getSourceItem"><a href="source.aspx?filename=displayandsearch.aspx" style="color:white;" target="_blank">Display Records</a></div>
            <div class="getSourceItem"><a href="source.aspx?filename=displayandsearch.aspx" style="color:white;">Search Records</a></div>
        </div>

</asp:Content>
