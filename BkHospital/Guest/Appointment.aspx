<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="BkHospital.Guest.Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- appointment -->
    <section class="contact d-flex align-items-center py-5 my-5">
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
                            <asp:Label ID="txtusername" runat="server" Text="user" Visible="false"></asp:Label>
                            <asp:TextBox ID="tstusername" runat="server" Visible="false"></asp:TextBox>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <asp:TextBox runat="server" ID="txtname" class="form-control form-control-input" placeholder="Enter name" required></asp:TextBox>

                                       
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                         <asp:TextBox ID="txtphone" runat="server" class="form-control form-control-input" placeholder="Enter phone number" required TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-1">
                                        <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-input" required placeholder="Enter email" TextMode="Email" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6 py-1">
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon1">Appintment date</span>
                                        <asp:TextBox runat="server" ID="txtdate" class="form-control" required TextMode="Date"></asp:TextBox>
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="form-group py-2">
                                        <asp:TextBox runat="server" ID="txtaddress" required class="form-control form-control-input" placeholder="Address"></asp:TextBox>

                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                          <asp:TextBox runat="server" ID="txtcity" required class="form-control form-control-input" placeholder="City"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                          <asp:TextBox runat="server" ID="txtstate" required class="form-control form-control-input" placeholder="State"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="form-group py-2">
                                <textarea class="form-control form-control-input" required runat="server" cols="20" rows="2" ID="txtdisease"  placeholder="Disease [बीमारी]"></textarea>
                            </div>
                        </div>
                        <div class="my-3">
                            <asp:Button ID="btnappointment" runat="server" Text="Conform Appointment" class="btn form-control-submit-button mx-5" OnClick="btnappointment_Click"/>
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
    <!-- end of appointment -->


</asp:Content>
