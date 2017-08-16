<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Try.registration" %>
<!DOCTYPE html>
<html>

<!-- Head -->
<head runat="server">

	<title>Sign in</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> 
    <link rel="stylesheet" href="css/login.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/registion.css" type="text/css" media="all">
</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>Sign in</h1>
	<div class="container w3layouts agileits">
		<div class="login w3layouts agileits" style="vertical-align:central; padding-left:250px;">
			<form runat="server">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="User id is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:TextBox runat="server" placeholder="User ID" ID="userid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="firstname" ErrorMessage="first name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:TextBox runat="server" placeholder="First Name" ID="firstname"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lastname" ErrorMessage="last name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:TextBox runat="server" placeholder="Last  Name" ID="lastname"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="email is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="regularexpression1" ControlToValidate="email" ValidationExpression="^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" ErrorMessage="wrong email format" EnableClientScript="false" runat="server"></asp:RegularExpressionValidator><br />
                <asp:TextBox runat="server" placeholder="Email" ID="email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:TextBox runat="server" placeholder="Password" TextMode="Password" ID="password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="repassword" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="comparevalidator1" ControlToValidate="repassword" ControlToCompare="password" Type="String" Text="two password must same" ForeColor="Red" runat="server"></asp:CompareValidator><br />
                <asp:TextBox runat="server" placeholder="Confirm Password" TextMode="Password" ID="repassword"></asp:TextBox>
                <asp:RangeValidator ID="rangevalidator1" ControlToValidate="age" MaximumValue="100" MinimumValue="1" Type="Integer" Text="Age must be from 1 to 100!" ForeColor="Red" runat="server"></asp:RangeValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="age" ErrorMessage="age is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:TextBox runat="server" placeholder="Age" ID="age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="url" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="regularexpression2" ControlToValidate="url" ValidationExpression="(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?" ErrorMessage="wrong url format" ForeColor="Red" runat="server"></asp:RegularExpressionValidator><br />
                <asp:TextBox runat="server" placeholder="Url" ID="url"></asp:TextBox>
                
                <!--<div class="agecontainer">
                <asp:TextBox runat="server" TextMode="Date"></asp:TextBox>
                </div>-->
                <div class="radiobutton">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="sex" ErrorMessage="sex is required" ForeColor="Red" Display="Static"></asp:RequiredFieldValidator><br />
                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ForeColor="white"
                         CellPadding="20" ID="sex">
                        <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="dropdowncountry">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="nation" ErrorMessage="nation is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <p style="color:white;">Nation:</p>
                    <asp:DropDownList runat="server" ID="nation">
                        <asp:ListItem Text="China-mainland" Value="cn"></asp:ListItem>
                        <asp:ListItem Text="China-Taiwan" Value="tw"></asp:ListItem>
                        <asp:ListItem Text="Korean" Value="korean"></asp:ListItem>
                        <asp:ListItem Text="Japanese" Value="jap"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="checkbox">
                    <p style="color:white;">Favorite baked foods:</p>
                    <asp:CheckBoxList runat="server" ForeColor="White" ID="foods">
                        <asp:ListItem Text="Pretzels" Value="pretzels"></asp:ListItem>
                        <asp:ListItem Text="Banana breads" Value="Banana"></asp:ListItem>
                        <asp:ListItem Text="Corn bread" Value="Corn"></asp:ListItem>
                        <asp:ListItem Text="Apple pie" Value="pie"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div class="listbox">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="techs" ErrorMessage="tech is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <p style="color:white;">Favorite baking techs:</p>
                    <asp:ListBox runat="server" ForeColor="Gray" ID="techs">
                        <asp:ListItem Text="America baking style" Value="A"></asp:ListItem>
                        <asp:ListItem Text="French baking style" Value="E"></asp:ListItem>
                        <asp:ListItem Text="Chinese baking style" Value="C"></asp:ListItem>
                    </asp:ListBox>
                </div>
			    <div class="send-button w3layouts agileits">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign in" />
                    <br />
                    <br />
                    <hr />                   
                    <ul id="seeall">
                        <li style="padding: 10px 0px;"><a href="/ass/locked/all.aspx" target="_blank">Click here to see all the customers.</a></li>
                        <li style="padding: 10px 0px;"><a href="/ass/locked/search.aspx" target="_blank">Click here to search customers.</a></li>
                    </ul>
                </div>
			    <div class="clear"></div>
            </form>
		</div>
		<div class="register w3layouts agileits"></div>
		<div class="clear"></div>
	</div>

	<div class="footer w3layouts agileits">
		<p>Copyright &copy; Jxie </p>
	</div>
    <div class="sourcecontainer">
        <div class="getSourceItem"><a href="#" style="color:white;" target="_blank">Calendar</a></div>
        <div class="getSourceItem"><a href="source.aspx?filename=registration.aspx" style="color:white;">Records</a></div>
    </div>
</body>
<!-- //Body -->

</html>
