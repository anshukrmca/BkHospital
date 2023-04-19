<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OPDPatient.aspx.cs" Inherits="BkHospital.Patients.OPDPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <asp:Panel ID="Panel3" runat="server">
        <div class="my-3 px-5 d-flex flex-row-reverse">
            <asp:LinkButton ID="PatientList" runat="server" CssClass="btn btn-primary mx-1" OnClick="PatientList_Click">Back to Patient List</asp:LinkButton>
            <asp:LinkButton ID="AppList" runat="server" CssClass="btn btn-warning">Appointment List</asp:LinkButton>
        </div>

    </asp:Panel>

      <asp:Panel ID="AddPatient" runat="server" Visible = false >
        <div class="container-fluid px-5 py-3">
            <br />
            <h2 class="text-center my-2 text-warning"><u><b>Patient Registratioon..!</b></u></h2>
            <br />
            <span class="badge badge-success bg-primary">Personal Information..!</span><hr />

            <div class="row">

                    <div class="col-lg-12" >
                    <div class="form-group py-2">
                        <asp:TextBox ID="txtPatientID" runat="server"  class="form-control form-control-input" Visible="false" ></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtPname" class="form-label">Patient name<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtPname" runat="server" required class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtP_age" class="form-label">Age<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtP_age" TextMode="Number" runat="server" required class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="ddlGender" class="form-label">Gender<span class="text-danger">*</span></label>
                        <asp:DropDownList ID="ddlGender" runat="server" class="form-control ">
                            <asp:ListItem Value="" Text="-- Gender --"></asp:ListItem>
                            <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                            <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                            <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtG_name" class="form-label">Guardian name<span class="text-danger">*</span></label>

                        <asp:TextBox ID="txtG_name" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtaddrss" class="form-label">Address<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtaddrss" runat="server" required class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtContact" class="form-label">Contct No<span class="text-danger">*</span></label>

                        <asp:TextBox ID="txtContact" runat="server" required class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="ddlP_type" class="form-label">Patient Type<span class="text-danger">*</span></label>
                        <asp:DropDownList ID="ddlP_type" runat="server" class="form-control ">
                            <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="New" Text="New"></asp:ListItem>
                            <asp:ListItem Value="Old" Text="Old"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtCoNme" class="form-label">C/o Name</label>

                        <asp:TextBox ID="txtCoNme" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="ddlConsultype" class="form-label">Patient Condition<span class="text-danger">*</span></label>
                        <asp:DropDownList ID="ddlConsultype" runat="server" class="form-control ">
                            <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="Regular/Normal" Text="Regular/Normal"></asp:ListItem>
                            <asp:ListItem Value="Emergency" Text="Emergency"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="DocList" class="form-label">Doctor<span class="text-danger">*</span></label>
                        <asp:DropDownList ID="DocList" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="DoctorName" DataValueField="DoctorName"  >
                        </asp:DropDownList>
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT [DoctorName] FROM [DoctorTBL]"></asp:SqlDataSource>
                       
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtfee" class="form-label">Fee<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtfee" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="ddlCashType" class="form-label">Cash Type<span class="text-danger">*</span></label>
                        <asp:DropDownList ID="ddlCashType" runat="server" class="form-control ">
                            <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="Cash" Text="Cash"></asp:ListItem>
                            <asp:ListItem Value="UPI" Text="UPI"></asp:ListItem>
                            <asp:ListItem Value="Checks" Text="Checks"></asp:ListItem>
                            <asp:ListItem Value="Debit cards" Text="Debit cards"></asp:ListItem>
                            <asp:ListItem Value="Credit cards" Text="Credit cards"></asp:ListItem>
                            <asp:ListItem Value="Electronic bank transfers" Text="Electronic bank transfers"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <br />
            <span class="badge badge-success bg-primary">Physical Information..!</span><hr />
            <div class="row">

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtBP" class="form-label">Blood Pressure</label>
                        <asp:TextBox ID="txtBP" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtSPO2" class="form-label">SPO2</label>
                        <asp:TextBox ID="txtSPO2" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtPR" class="form-label">Pluse Rate</label>
                        <asp:TextBox ID="txtPR" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtweight" class="form-label">Weight (Kg)</label>

                        <asp:TextBox ID="txtweight" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txttemp" class="form-label">Tempreture</label>
                        <asp:TextBox ID="txttemp" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtBSR" class="form-label">BSR</label>

                        <asp:TextBox ID="txtBSR" runat="server"  class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

            </div>
            <br />
            <span class="badge badge-success bg-primary">Medical Insurance Information..!</span><hr />

            <div class="col-lg-12">
                <asp:CheckBox ID="medicalCheck" CssClass="px-2 py-5" AutoPostBack="true" runat="server" OnCheckedChanged="medicalCheck_CheckedChanged"  /><span>Do you have Medical Card..?</span>
            </div>
            <br />
            <asp:Panel ID="madicalView" runat="server" Visible="false">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="txtCHnmae" class="form-label">Card Holder Name</label>
                            <asp:TextBox ID="txtCHnmae" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="txtCardNo" class="form-label">Card No</label>
                            <asp:TextBox ID="txtCardNo" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="txtvalidDate" class="form-label">Valid Date</label>
                            <asp:TextBox ID="txtvalidDate" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="ddlTpaGroup" class="form-label">TPA Group</label>
                            <asp:DropDownList ID="ddlTpaGroup" runat="server" class="form-control form-control-input">
                                <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                                <asp:ListItem Value="11" Text="111"></asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="ddlInsuranceName" class="form-label">Insurance Name</label>
                            <asp:DropDownList ID="ddlInsuranceName" runat="server" class="form-control form-control-input">
                                <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                                <asp:ListItem Value="11" Text="111"></asp:ListItem>

                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group py-2">
                            <label for="txtInsuranceNo" class="form-label">Insurance No</label>
                            <asp:TextBox ID="txtInsuranceNo" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>

            </asp:Panel>
                 <asp:Button ID="btnPSave" runat="server" Text="Save Patient" class="btn btn-success mx-3 my-2" OnClick="btnPSave_Click" />
                 <asp:Button ID="btnPUpdate" runat="server" Text="Update Patient" class="btn btn-success mx-3 my-2" OnClick="btnPUpdate_Click" Visible="false"/>

        </div>

    </asp:Panel>


     <asp:Panel ID="ViewPatient" runat="server"  Visible="false">

        
      <h2 class="text-center py-3 text-info"><u><b>Patient Details..!</b></u></h2>

         <div class="row">
           
            <div class="col-lg-8">
                <asp:Button ID="newDocbtn" runat="server" Text="Add New Patient" class="btn btn-success mx-3 my-2" OnClick="newDocbtn_Click"></asp:Button>
            </div>
        </div>
          <div class="py-3 px-25 mx-3 rounded">
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT [PatientID], [PName], [PAge], [Gender], [Address], [Contact], [Doctor], [fee] FROM [Patient]"></asp:SqlDataSource>
         <asp:GridView ID="PatientView" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">

             <Columns>
                 <asp:BoundField DataField="PatientID" HeaderText="PatientID" ReadOnly="True" SortExpression="PatientID" />
                 <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                 <asp:BoundField DataField="PAge" HeaderText="PAge" SortExpression="PAge" />
                 <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                 <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                 <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor" />
                 <asp:BoundField DataField="fee" HeaderText="fee" SortExpression="fee" />

                  <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                             <asp:LinkButton ID="linkView" runat="server" > <i class="lar la-eye bg-success"></i></i></asp:LinkButton>
                       <asp:LinkButton ID="getId" runat="server" CommandArgument='<%# Eval("PatientID") %>' onclick="getId_click"> <i class="lar la-edit bg-warning mx-2"></i></asp:LinkButton>
                       <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("PatientID") %>' onclick="delete_click"><i class="lar la-trash-alt bg-danger"></i></i></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

             </Columns>

    </asp:GridView>
              </div>
         </asp:Panel>


</asp:Content>
