<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Admin.Master" AutoEventWireup="true" CodeBehind="DoctorList.aspx.cs" Inherits="BkHospital.Hospital.DoctorList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#docimg').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="DocAdd" runat="server">

        <div class="container" data-aos="fade-right">
            <h2 class="text-center my-2 text-warning"><u><b>Doctor Registratioon..!</b></u></h2>
            <br />
            <div class="container">
                <span class="badge badge-success bg-primary">Personal Information..!</span><hr />
                <div class="row">

                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtfullname" runat="server" required placeholder="Full name" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtQualification" runat="server" required placeholder="Qualification" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtFee" TextMode="Number" runat="server" required placeholder="Consult Fee" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtemail" runat="server" required placeholder="Enter email" class="form-control form-control-input"></asp:TextBox>
                        </div>
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
                            <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" required placeholder="Phone No" class="form-control form-control-input"></asp:TextBox>
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
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtSpecialization" runat="server" required placeholder="Specialization" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                   <%-- <div class="col-lg-4">
                        <div class="form-group py-2">
                            <asp:FileUpload runat="server" ID="txtDocImg" class="form-control form-control-input" onchange="readURL(this);"/>
                        </div>
                        <div class="col-lg-2">
                        <img id="docimg" Height="150px" Width="100px" src="../DoctorIMG/hoslogo.png" />
                        </div>
                    </div>--%>
                    <div class="form-group py-2">
                        <textarea class="form-control form-control-input" required runat="server" cols="20" rows="2" id="txtaboutDoc" placeholder="About Doctor"></textarea>
                    </div>

                </div>
                <hr />
                <span class="badge badge-success bg-primary">Account Information..!</span><hr />
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="TextBox1" runat="server"  placeholder="Account No" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="TextBox2" runat="server"  placeholder="IFSC Code" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="TextBox3" runat="server"  placeholder="Account Holder Name" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="TextBox4" runat="server"  placeholder="Bank Name" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <asp:Button ID="btnSave" runat="server" Text="Register Doctor   " class="btn btn-success mx-3 my-2" OnClick="btnSave_Click" />
            <a href="AdminDashBoard.aspx" class="btn btn-primary">Back</a>
            <br />
        </div>

    </asp:Panel>



    <asp:Panel ID="DocList" runat="server">
        <div class="row mx-3 px-4" data-aos="fade-up">
                    <div class="mt-5 mx-1 py-3">
                        <h2 class="text-center my-2 text-info"><u><b>Appointment Details..!</b></u></h2>
                        <br />


                        <table class="table">

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
                            </tbody>
                        </table>
                    </div>
                </div>

    </asp:Panel>


</asp:Content>
