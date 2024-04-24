<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="SLTBweb.UserRegistration" %>
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
        .img-container {
            text-align: right !important; /* Align the image to the right side */
            margin-top: 10%; /* Adjust margin-top as needed */
        }

        .img-container img {
            max-width: 100% !important;
            height: auto !important;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 5%">
    </div>
    <div class="row centered-form" style="margin-top: 5%">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">New User Registration</h3>
                </div>
                <div class="panel-body">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="First Name is required." /><br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblUserName" runat="server" Text="Mobile No/User Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtMobileNo" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Mobile No is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtLastName" runat="server" class="form-control input-sm floatlabel"/>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Last Name is required." /><br />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm floatlabel" TextMode="Password" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Password  is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtEmailID" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailID" Display="None" ID="rfVEmail" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Email Id is required." /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                            <asp:TextBox runat="server" ID="txtAddress" class="form-control input-sm" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="None" ID="rfVAddress" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Address  is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                            <asp:TextBox runat="server" ID="txtCity" class="form-control input-sm" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" Display="None" ID="rfVCity" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="City Name is required." /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPinCode" runat="server" Text="Pincode" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPincode" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPincode" Display="None" ID="rfvPinCode" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Pin code is required." /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" class="btn btn-success" ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <a href="Login.aspx" class="btn btn-info btn-block">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
