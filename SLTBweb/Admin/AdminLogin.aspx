<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SLTBweb.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font: normal normal 15px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            color: #333333;
            background: #111111 url(//2.bp.blogspot.com/-j5N2cp6kXZM/VavIDY5_95I/AAAAAAAALxE/s_MfDBf9MKI/s0/langama_CTB_BACKGROUND_TEXTURE_SLTB_OLD_CLASSIC_DARK_FINALE_croped.jpg) repeat scroll top left;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .centered-form {
            margin-top: 10%;
        }

        .centered-form .panel {
            background: rgba(255, 255, 255, 0.8);
            box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
        }

        label.label-floatlabel {
            font-weight: bold;
            color: #46b8da;
            font-size: 11px;
        }

        #loginform {
            margin-top: 20px;
            background-color: #c7102f;
            padding: 20px;
            border-radius: 10px;
        }

        #loginform .input-group-addon {
            background-color: #1c0105;
        }

        .panel-title {
            font-size: 22px;
            font-weight: bold;
            color: #333;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100" style="margin-top:3%">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div id="loginbox" class="panel panel-default">
                        <div class="panel-heading panel-heading-custom">
                            <div class="panel-title">
                                LOGIN AS SLTB ADMIN
                            </div>
                        </div>
                        <div class="panel-body">
                            <asp:Label ID="lblErrorMsg" runat="server" /><br />
                            <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />
                            <div id="loginform" class="form-horizontal" role="form">
                                <div class="input-group" style="margin-bottom: 25px">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox runat="server" ID="txtUserId" placeholder="Enter Admin Id" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                                        CssClass="text-danger" ErrorMessage="The email field is required." /><br />
                                </div>
                                <div class="input-group" style="margin-bottom: 25px">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Enter password here" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" CssClass="text-danger" ID="rfvPassword"
                                        ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12 controls">
                                        <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success" style="width:auto;" ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" />
                                        <br /><br />
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Image container -->
                <div class="col-md-3 col-sm-4">
                    <img src="images/adminlogin.jpg" alt="Image" style="width: 100%; max-width: 300px; height: auto;" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

