<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="BkHospital.Guest.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="loginforrm1">
        <div class="container-fluid py-5 my-5">

            <div class="row ">
                <div class="col-lg-7 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div class="mt-5 mx-5 py-3 px-2">
                        <h2 class="text-center my-2 text-info"><u><b>User Details..!</b></u></h2>
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
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Phone No" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="city" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="State" />
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
                                    <div class="col-lg-4">
                                        <div class="form-group py-2">
                                            <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="UserName" ReadOnly="true"/>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group py-2">
                                            <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="Password" ReadOnly="true" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group py-2">
                                            <input type="text" class="form-control form-control-input" id="examControlInput2" placeholder="New Password" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <asp:Button ID="btnSave" runat="server" Text="Update" class="btn btn-success my-4" />
                           
                        </div>

                    </div>

                </div>


                <div class="col-lg-5 mt-5">

                    <div class=" d-flex align-items-center mt-5" data-aos="fade-down">
                        <img class="img-fluid d-none d-lg-block mt-5" src="../assets/images/contact.jpg" alt="img" />
                    </div>


                </div>


            </div>
             <div class="row mx-3 px-4" data-aos="fade-up">
                    <div class="mt-5 mx-1 py-3">
                        <h2 class="text-center my-2 text-info"><u><b>Appointment Details..!</b></u></h2>
                        <br />


                        <table class="table text-white">

                            <thead>
                                <tr>
                                    <th scope="col">Appointment Id</th>
                                    <th scope="col">Patient Name</th>
                                    <th scope="col">Mobile</th>
                                    <th scope="col">E-mail</th>
                                    <th scope="col">Date Of Appointment</th>
                                    <th scope="col">Addess</th>
                                    <th scope="col">City</th>
                                    <th scope="col">State</th>
                                    <th scope="col">Disease [बीमारी]</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                     <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                     <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                     <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>
    </form>


</asp:Content>
