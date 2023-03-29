<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BkHospital.Guest.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <form id="loginforrm1">
        <div class="registration_div">
            <div class=" mt-5 mx-5 py-3 px-2">
                <h2 class="text-center my-2 text-warning"><u><b>Sign Up..!</b></u></h2>
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
                                <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Enter email" />
                            </div>
                        </div>
                    <div class="col">
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Address" />
                            </div>
                        </div>
                    
                     <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group py-1">
                                    <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Phone No" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group py-2">
                                    <input type="date" class="form-control form-control-input" id="examControlInput2" placeholder="DOB" />
                                </div>
                            </div>
                        </div>
                     <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group py-1">
                                    <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="State" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group py-2">
                                    <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="City" />
                                </div>
                            </div>
                        </div>

                    <asp:Button ID="btnSave" runat="server" Text="Submit" class="btn btn-success mx-3 my-2" />
                    <a href="Home.aspx" class="btn">Back</a>
                </div>
                     <p class="nav-link text-light">You have account..! <a href="Userlogin.aspx" class="text-success">Sign In</a></p>
            </div>
        </div>
    </form>


</asp:Content>
