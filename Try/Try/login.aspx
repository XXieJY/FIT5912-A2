<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Try.login2" %>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>登录表单</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/login.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>Login page</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits" style="vertical-align:central; padding-left:250px;">
			<h2>Login</h2>
			<form id="form1" runat="server">
                <asp:TextBox ID="TexBoxName" runat="server" placeholder="User id"></asp:TextBox>
                <asp:TextBox ID="TextBoxPWD" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
			
			    <ul class="tick w3layouts agileits">
				    <li>
					    <input type="checkbox" id="brand1" value="">
					    <label for="brand1"><span></span>remember me</label>
                        <a href="registration.aspx" style="float:right">sign in</a>
				    </li>
			    </ul>

			    <div class="send-button w3layouts agileits">
				     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
			    </div>

			    <div class="social-icons w3layouts agileits"></div>
			    <div class="clear"></div>
            </form>
		</div>
		<div class="register w3layouts agileits">
           
		</div>
		<div class="clear"></div>
	</div>
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; Jxie </p>
	</div>

</body>
<!-- //Body -->

</html>
