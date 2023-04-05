<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BkHospital.Guest.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <form id="loginforrm1">
        <div class="registration_div" data-aos="fade-right">
            <div class=" mt-5 mx-5 py-3 px-2">
                <h2 class="text-center my-2 text-warning"><u><b>Sign Up..!</b></u></h2>
                <br />
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtfstname" runat="server" placeholder="First name" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtlastname" runat="server" placeholder="Last name" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                                <asp:TextBox ID="txtemail" runat="server" placeholder="Enter email" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                                <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtphone" runat="server" placeholder="Phone No" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtcity" runat="server" placeholder="City" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtstate" runat="server" placeholder="State" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtcountry" runat="server" placeholder="Country" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col">
                            <center>
                                <span class="badge bg-info text-dark">Login Credentials...!</span>
                            </center>
                        </div>

                        <br />
                        <br />
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group py-2">
                                <asp:TextBox ID="txtusername" runat="server" placeholder="UserName" class="form-control form-control-input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group py-2">
                                <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" class="form-control form-control-input"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                    <asp:Button ID="btnSave" runat="server" Text="Submit" class="btn btn-success mx-3 my-2" OnClick="btnSave_Click" />
                    <a href="Home.aspx" class="btn">Back</a>
                </div>
                <p class="nav-link text-light">You have account..! <a href="Userlogin.aspx" class="text-success">Sign In</a></p>
                <br />
            </div>
        </div>
    </form>


</asp:Content>
