﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login V14</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
                    <div class="login100-form validate-form flex-sb flex-w">
                        <span class="login100-form-title p-b-32">Login
                        </span>
                        <span class="txt1 p-b-11">Username</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email!!!" ControlToValidate="TextBoxUsername" Display="Dynamic" Font-Size="Medium" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input m-b-36" data-validate="Username is required">
                            <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="input100" ValidationGroup="1"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                        <span class="txt1 p-b-11">Password</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password!!!" ControlToValidate="TextBoxPass" Display="Dynamic" Font-Size="Medium" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input m-b-12" data-validate="Password is required">
                            <span class="btn-show-pass">
                                <i class="fa fa-eye"></i>
                            </span>

                            <asp:TextBox ID="TextBoxPass" runat="server" CssClass="input100" ValidationGroup="1"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                        <span class="txt1 p-b-11">Type</span>
                        <div class="wrap-input100 validate-input m-b-36" data-validate="Username is required">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input100" ValidationGroup="1">
                                <asp:ListItem Value="0">Admin</asp:ListItem>
                                <asp:ListItem Value="1">Member</asp:ListItem>
                            </asp:DropDownList>
                            <span class="focus-input100"></span>
                        </div>
                        <div class="flex-sb-m w-full p-b-48">
                            <div class="contact100-form-checkbox">
                                <asp:Label ID="Label1" runat="server" Text="Invalid Username or Password" Font-Bold="False" Font-Italic="False" Font-Names="Andalus" ForeColor="#CC0000" Visible="False"></asp:Label>
                            </div>

                            <%--<div>
                                <a href="#" class="txt3">Forgot Password?
                                </a>
                            </div>--%>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login100-form-btn" OnClick="Button1_Click" ValidationGroup="1" />
                            <asp:Button ID="Button2" runat="server" Text="Back" CssClass="login100-form-btn" OnClick="Button2_Click" />

                        </div>

                    </div>
                </div>
            </div>
        </div>



        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
    </form>
</body>
</html>
