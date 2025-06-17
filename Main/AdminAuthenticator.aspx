<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAuthenticator.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Admin Login - Pages |  WORLD SPEAK</title>

    <meta name="description" content="Achieve new heights of SUCCESS in life Start your on BUSINESS" />
    <meta name="keywords" content="vdesk, business vdesk, login ">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/">

   <link rel="icon" type="image/x-icon" href="../Loginassets/img/logo/favicon.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../Loginassets/vendor/fonts/boxicons.css" />



    <!-- Core CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../Loginassets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../Loginassets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

     <link rel="stylesheet" href="../Loginassets/vendor/css/pages/page-auth.css">
    <!-- Helpers -->
    <script src="../Loginassets/vendor/js/helpers.js"></script>
     <script src="../Loginassets/js/config.js"></script>
      <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
     

</head>
<body id="top" data-theme-color="color-yellow" style="background-image:url(https://images.pexels.com/photos/240572/pexels-photo-240572.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1260&amp;h=750&amp;dpr=1); background-size:cover; background-position:center" >
    <form id="form1" runat="server">
   <!-- Content -->

    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card">
                   <div class="card-body" style=" -webkit-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); -moz-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); box-shadow: 0px 0px 10px 5px #000000; background-color: rgba(255,255,255,1);">
                       <!-- Logo -->
                       <div class="app-brand justify-content-center">
    <a href="index.html" class="app-brand-link gap-2">
        <span class="app-brand-logo demo ">

           <img src="../Loginassets/img/logo/logo.png" width="12%" />

        </span>
        <%--<span class="app-brand-text demo text-body fw-bolder">Sneat</span>--%>
    </a>
</div>

                                
                            <center>
                                <h4 class="txt-light">Admin Login</h4>
                                <h6>Please Enter OTP !!!</h6>
                            </center>

                            <div class="form-group">
                                <asp:TextBox ID="txtOtp" runat="server" class="form-control" placeholder="Enter OTP By Registerd Mail!"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnsignin" OnClick="btnLogin_Click" Style="margin-right: 35%;" CssClass="btn btn-primary btn-block" runat="server" Text="Submit" />
                            </div>
                            <asp:Label ID="msg" runat="server" CssClass="text-white"></asp:Label>
                            <asp:Label ID="lbotptime" runat="server" CssClass="text-white"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            </div>
      

        <!-- latest jquery-->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <!-- feather icon js-->

        <script src="assets/js/icons/feather-icon/feather.min.js"></script>

        <script src="assets/js/icons/feather-icon/feather-icon.js"></script>
        <!-- Sidebar jquery-->

        <script src="assets/js/sidebar-menu.js"></script>

        <script src="assets/js/config.js"></script>
        <!-- Bootstrap js-->

        <script src="assets/js/bootstrap/popper.min.js"></script>
        <script src="assets/js/bootstrap/bootstrap.min.js"></script>


        <!-- Plugins JS start-->
        <!-- Plugins JS Ends-->
        <!-- Theme js-->

        <script src="assets/js/script.js"></script>
        <!-- login js-->
        <!-- Plugin used-->
    </form>
</body>
</html>
