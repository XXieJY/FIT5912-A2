<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="Try.ass.locked.email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.bootcss.com/normalize/7.0.0/normalize.min.css" />
     <link rel="stylesheet" type="text/css" media="screen" href="css/gridview.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="text-align:center; margin: 0 auto; vertical-align: central; z-index:999;">
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tryConnectionString %>" 
            SelectCommand="SELECT [fname], [lname], [email] FROM [Table]" ></asp:SqlDataSource>

       <div style="padding-top: 50px; padding-bottom: 50px;" id="allandsearchacontainer" >
        <div class="paddingforcanvas">
        <div style="display:inline-block; vertical-align: middle;">
            <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="false"  DataSourceID="sqlDataSource" Height="93px" Width="704px" CssClass="packup">
            <FooterStyle CssClass="GridViewFooterStyle" />
            <RowStyle CssClass="GridViewRowStyle" />   
            <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
            <PagerStyle CssClass="GridViewPagerStyle" />
            <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
            <HeaderStyle CssClass="GridViewHeaderStyle" />
            <Columns>             
                <asp:BoundField DataField="fname" HeaderText="first name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="last name" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="user email" SortExpression="email" />              
                <asp:TemplateField HeaderText="Select">
                  <ItemTemplate>
                    <asp:CheckBox runat="server" ID="chkEmail" />
                  </ItemTemplate>
                </asp:TemplateField>
            </Columns>
          </asp:GridView>
            <br />
         <asp:Label ID="lblMail" runat="server" ForeColor="#ff0000" Font-Size="25px"/>
         <br />
         <table style="align-content:center; height: 292px; margin-top: 0px;">
             <tr>
                 <td class="emailHeader" style="width: 98px"><b />From</td>
                 <td class="emailRow" style="text-align:left;">FIT5192_Lecturer</td>
             </tr>
             <tr>
                 <td class="emailHeader" style="width: 98px"><b />Subject</td>
                 <td class="emailRow"><asp:TextBox ID="txtSubject" runat="server" Width="587px" Height="30px"  /></td>
             </tr>
             <tr>
                 <td class="emailHeader" style="width: 98px"><b />Attachment</td>
                 <td class="emailRow"><asp:FileUpload ID="fileUpload" runat="server" Width="586px" Height="25px" /></td>
             </tr>
             <tr>
                 <td class="emailHeader" style="width: 98px"><b />Message</td>
                 <td class="emailRow"><asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Columns="55" Rows="15" Height="207px" Width="588px" /></td>
             </tr>
        </table>
         <div style="margin-bottom:30px;margin-left:0">
            <asp:Button ID="SendMail" runat="server" OnClick="SendingEmail" Text="Send Email" />
            <br />
         </div>
        </div>
        </div>   
     </div>
 </div>
    
</asp:Content>
