<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="BkHospital.Hospital.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Panel ID="DocAdd" runat="server" Visible="false">

        <div class="container py-5" data-aos="fade-right">
            <h2 class="text-center my-2 text-warning"><u><b>Doctor Registratioon..!</b></u></h2>
            <br />
            <div class="container">
                <span class="badge badge-success bg-primary">Personal Information..!</span><hr />
                <div class="row">

                     <div class="col-lg-12">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtDocID" runat="server" placeholder="ID" class="form-control form-control-input" Visible="false"></asp:TextBox>
                        </div>
                    </div>

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
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:DropDownList ID="ddlCunsultTime" class="form-control form-control-input" required runat="server">
                                <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                                <asp:ListItem Value="Morning" Text="Morning"></asp:ListItem>
                                <asp:ListItem Value="AfterNoon" Text="AfterNoon"></asp:ListItem>
                                <asp:ListItem Value="Evening" Text="Evening"></asp:ListItem>
                                <asp:ListItem Value="Whole Day" Text="Whole Day"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group py-2">
                        <textarea class="form-control form-control-input" required runat="server" cols="20" rows="2" id="txtaboutDoc" placeholder="About Doctor"></textarea>
                    </div>

                </div>
                <hr />
                <span class="badge badge-success bg-primary">Account Information..!</span><hr />
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtDocAccount" runat="server" placeholder="Account No" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtDocIFSC" runat="server" placeholder="IFSC Code" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtDocAccHolder" runat="server" placeholder="Account Holder Name" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <asp:TextBox ID="txtDocBankName" runat="server" placeholder="Bank Name" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <asp:Button ID="btnSave" runat="server" Text="Register Doctor   " class="btn btn-success mx-3 my-2" OnClick="btnSave_Click"  />
            <asp:Button ID="btnUpdata" runat="server" Text="Update Doctor   " class="btn btn-success mx-3 my-2" OnClick="btnUpdata_Click" />
            <asp:LinkButton ID="shuowDocList" runat="server" CssClass="btn btn-info" OnClick="shuowDocList_Click">Doctor List</asp:LinkButton>

            <br />
        </div>

    </asp:Panel>


     <asp:Panel ID="DocList" runat="server" Visible="false">
         <h2 class="text-center py-2 text-info"><u><b>Doctor Details..!</b></u></h2>
    <br />
        <div class="row">
           
            <div class="col-lg-8">
                <asp:Button ID="newDocbtn" runat="server" Text="Add New Doctor   " class="btn btn-success mx-3 my-2" OnClick="newDocbtn_Click"></asp:Button>
            </div>
            
        </div>

       <div class="py-3 px-3 rounded">

        <asp:sqldatasource id="sqldatasource1" runat="server" connectionstring="<%$ connectionstrings:bkhospitaldbconnectionstring %>" selectcommand="select [doctorid], [doctorname], [doctorqualification], [doctorfee],[DoctorEmail], [doctorphone], [doctorspecilization] from [doctortbl]"></asp:sqldatasource>
            <asp:gridview class="table table-striped table-hover" id="DoctorGriv" runat="server" autogeneratecolumns="False" datasourceid="sqldatasource1">

                <columns>
                    <asp:boundfield datafield="doctorid" headertext="ID" readonly="true" sortexpression="doctorid" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="doctorname" headertext="NAME" sortexpression="doctorname" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="doctorqualification" headertext="QUALIFICATION" sortexpression="doctorqualification" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="doctorfee" headertext="FEES" sortexpression="doctorfee" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="doctorphone" headertext="CONTACT" sortexpression="doctorphone" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="doctorspecilization" headertext="SPECILIZATION" sortexpression="doctorspecilization" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>
                    <asp:boundfield datafield="DoctorEmail" headertext="EMAIL" sortexpression="doctorspecilization" >

                    <ItemStyle HorizontalAlign="Center" />
                    </asp:boundfield>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                             <asp:LinkButton ID="linkView" runat="server" CommandArgument='<% # Eval("doctorid")%>'> <i class="lar la-eye bg-success"></i></i></asp:LinkButton>
                       <asp:LinkButton ID="linkSelect" runat="server" CommandArgument='<% # Eval("doctorid")%>' OnClick="getId"> <i class="lar la-edit bg-warning mx-2"></i></asp:LinkButton>
                       <asp:LinkButton ID="linkdelete" runat="server" CommandArgument='<% # Eval("doctorid")%>' OnClick="dataDelete"><i class="lar la-trash-alt bg-danger"></i></i></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                </columns>

            </asp:gridview>

           

        </div>


    </asp:Panel>

</asp:Content>
