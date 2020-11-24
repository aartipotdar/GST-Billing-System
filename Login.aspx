<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GSTBillingSystem.demo1" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
  <head id="Head1" runat="server">
      
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <meta name="twitter:site" content="@themepixels">
    <meta name="twitter:creator" content="@themepixels">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Slim">
    <meta name="twitter:description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="twitter:image" content="http://themepixels.me/slim/img/slim-social.png">

    <!-- Facebook -->
    <meta property="og:url" content="http://themepixels.me/slim">
    <meta property="og:title" content="Slim"/>
    <meta property="og:description" content="Premium Quality and Responsive UI for Dashboard."/>

    <meta property="og:image" content="http://themepixels.me/slim/img/slim-social.png"/>
    <meta property="og:image:secure_url" content="http://themepixels.me/slim/img/slim-social.png"/>
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600">

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="author" content="ThemePixels">

    <title>Universal GST Billing System</title>

    <!-- Vendor css -->
    <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../lib/Ionicons/css/ionicons.css" rel="stylesheet">

    <!-- Slim CSS -->
    <link rel="stylesheet" href="../css/slim.css">
     <%-- <style>
          .A1 {
            background-image: url(blank.jpg);
                }
      </style>--%>
      <link rel="stylesheet" type="text/css" href="styles.css" />
  </head>
    <body>
  <div>
    <form id="form1" runat="server">
       <div  style="background-color: transparent; background-image: url(img/abc.jpg);">
    <div class="signin-wrapper">

      <div class="signin-box">
        <h2 class="slim-logo"><a href="index.html">UGST</a></h2>
        <h2 class="signin-title-primary">Welcome!!!</h2>
        <h3 class="signin-title-secondary">Sign in to GST Billing System.</h3>

        <div class="form-group">
            <div class="input-group  mg-b-10">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fa fa-user tx-20 lh-0 op-6"></i></span>
                   </div>
                            
            <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Enter your UserName"></asp:TextBox>
            <div class="col-sm-12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Enter UserName" ForeColor="Red"  ControlToValidate="UserName" ValidationGroup="addLogin" runat="server" />
        </div>
            </div><!-- form-group -->
          </div>

        <div class="form-group mg-b-50">
            <div class="input-group  mg-b-10">
            <div class="input-group-prepend">
            <span class="input-group-text"><i class="fa fa-lock tx-20 lh-0 op-6"></i></span>
            </div>
                            
            <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
           <div class="col-sm-12">
             <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Enter Password" ControlToValidate="Password"  ForeColor="Red" ValidationGroup="addLogin" runat="server" />--%>
               <%--<asp:RegularExpressionValidator ErrorMessage="Enter Valid password" ValidationExpression="^[a-zA-z0-9'@&#.\s]{7,10}$"  ForeColor="Red" ValidationGroup="addLogin" ControlToValidate="Password" runat="server" />--%>
           </div>
           </div><!-- form-group -->
          </div>

        <%--<button class="btn btn-primary btn-block btn-signin" onclick=" Button1_Click">Sign In</button>--%>
          <asp:Button ID="Button1" Text="Login" runat="server" CssClass="btn btn-primary btn-block btn-signin"  ValidationGroup="addLogin" OnClick="Button1_Click"/>
          
      </div><!-- signin-box -->

    </div><!-- signin-wrapper -->
   
    <script src="../lib/jquery/js/jquery.js"></script>
    <script src="../lib/popper.js/js/popper.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.js"></script>

    <script src="../js/slim.js"></script>
   </div>
</form>
  </div>
      </body>
</html>

   
	