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
                                <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="First name" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Last name" />
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                            <input type="email" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Enter email" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                            <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Address" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <input type="number" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Phone No" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="City" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="State" />
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="Country" />
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
                                    <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="UserName" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group py-2">
                                    <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="Password" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <asp:Button ID="btnSave" runat="server" Text="Submit" class="btn btn-success mx-3 my-2" />
                    <a href="Home.aspx" class="btn">Back</a>
                </div>
                <p class="nav-link text-light">You have account..! <a href="Userlogin.aspx" class="text-success">Sign In</a></p>
                <br />
            </div>
        </div>
    </form>


</asp:Content>
