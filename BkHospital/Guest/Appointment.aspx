<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="BkHospital.Guest.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <!-- Contact -->
    <section class="contact d-flex align-items-center py-5 my-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-7 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div style="width: 90%">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <p class="text-danger">Appointmnet Form...!</p>
                            <h2 class="py-2 text-warning">Send your Details.......</h2>
                            <p class="para-light">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dignissimos dicta mollitia totam explicabo obcaecati quia laudantium repudiandae.</p>
                        </div>
                        <div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Enter name" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput2" placeholder="Enter phone number" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="form-group py-1">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Enter email" />
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group py-2">
                                        <input type="date" class="form-control form-control-input" id="examControlInput2" placeholder="Appintment date" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group py-2">
                                <input type="text" class="form-control form-control-input" id="examplormcity" placeholder="Address" />
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="exampleFormcity" placeholder="City" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlState" placeholder="State" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group py-2">
                                <textarea class="form-control form-control-input" id="exampleFormControlTextarea1" rows="6" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <div class="my-3">
                            <a class="btn form-control-submit-button mx-5" href="#your-link">Conform Appointment</a>
                            <a class="btn form-control-submit-button" href="Home.aspx">Back..!</a>

                        </div>
                    </div>
                    <!-- end of div -->
                </div>
                <!-- end of col -->
                <div class="col-lg-5 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="../assets/images/contact.jpg" alt="contact" />
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of contact -->


</asp:Content>
