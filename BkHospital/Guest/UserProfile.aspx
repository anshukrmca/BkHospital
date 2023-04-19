<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="BkHospital.Guest.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="loginforrm1">
        <div class="container-fluid py-5">

            <div class="row ">
                <div class="col-lg-7 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div class="mt-5 mx-5 py-3 px-2">
                        <h2 class="text-center my-2 text-info"><u><b>User Details..!</b></u></h2>
                        <br />
                         <div class="container">
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtfstname" runat="server" required placeholder="First name" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtlastname" runat="server" required placeholder="Last name" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                                <asp:TextBox ID="txtemail" runat="server" required placeholder="Enter email" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group py-2">
                                <asp:TextBox ID="txtaddress" runat="server" required placeholder="Address" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtphone" runat="server" required placeholder="Phone No" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtcity" runat="server" required placeholder="City" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtstate" runat="server" required placeholder="State" class="form-control form-control-input"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group py-2">
                                <asp:TextBox ID="txtcountry" runat="server" required placeholder="Country" class="form-control form-control-input"></asp:TextBox>
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
                                <asp:TextBox ID="txtusername" runat="server" required placeholder="UserName" class="form-control form-control-input" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group py-2">
                                <asp:TextBox ID="txtpassword" runat="server" required placeholder="Password" class="form-control form-control-input" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-lg-4">
                                <div class="form-group py-2">
                                <asp:TextBox ID="txtConformPass" runat="server" placeholder="New Password" class="form-control form-control-input"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                    <asp:Button ID="brnupdate" runat="server" Text="Update" class="btn btn-success mx-3 my-2" OnClick="brnupdate_Click" />
                    <a href="Home.aspx" class="btn btn-success mx-3 my-2">Back </a>
                </div>
                    </div>

                </div>


                <div class="col-lg-5 mt-5">

                    <div class=" d-flex align-items-center mt-5" data-aos="fade-down">
                        <img class="img-fluid d-none d-lg-block mt-5" src="../assets/images/contact.jpg" alt="img" />
                    </div>


                </div>


            </div>


                    <h2 class="text-center my-2 text-info"><u><b>Appointment Details..!</b></u></h2>
                    <br />
                    <div class="bg-white py-5 px-2 my-5 mx-2 rounded">

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT [AppointmentID], [Name], [Phone], [City], [Appointment_Date], [Email], [Address], [username], [Disease], [ConsultTime], [DoctorName], [state] FROM [Appointmant]"></asp:SqlDataSource>
                        <asp:GridView   class="table table-striped table-hover"  ID="AppointGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="AppointmentID" HeaderText="ID" ReadOnly="True" SortExpression="AppointmentID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="Appointment_Date" HeaderText="Appointment_Date" SortExpression="Appointment_Date" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                                <asp:BoundField DataField="ConsultTime" HeaderText="ConsultTime" SortExpression="ConsultTime" />
                                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                            </Columns>

                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                        </asp:GridView>
                    </div>
        </div>
    </form>


</asp:Content>
