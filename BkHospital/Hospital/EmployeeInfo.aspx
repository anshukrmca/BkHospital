<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="BkHospital.Hospital.EmployeeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Panel ID="AddEmp" runat="server" Visible ="false" >
        <div class="container-fluid px-5 py-3">
            <br />
            <h2 class="text-center my-2 text-info"><u><b>Employee Registratioon..!</b></u></h2>
            <br />
            <span class="badge badge-success bg-primary">Personal Information..!</span><hr />

            <div class="row">

                    <div class="col-lg-12" >
                    <div class="form-group py-2">
                        <asp:TextBox ID="txtEmpID" runat="server"  class="form-control form-control-input" Visible="false" ></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtPname" class="form-label">Name<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtname" runat="server" required class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtP_age" class="form-label">Age<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txt_age" TextMode="Number" runat="server" required class="form-control form-control-input"></asp:TextBox>
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
                        <label for="txtG_name" class="form-label">Father name<span class="text-danger">*</span></label>

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
                        <label for="txtemail" class="form-label">Email <span class="text-danger">*</span></label>
                           <asp:TextBox ID="txtemail" TextMode="Email" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtDOB" class="form-label">Date of Birth<span class="text-danger">*</span></label>

                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtcity" class="form-label">City<span class="text-danger">*</span></label>
                  <asp:TextBox ID="txtcity" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group py-2">
                        <label for="DocList" class="form-label">Date of Joining<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtdoj" runat="server" TextMode="Date" class="form-control form-control-input"></asp:TextBox>
                      
                       
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group py-2">
                        <label for="txtSalary" class="form-label">Salary<span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtSalary" TextMode="Number"  runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
               
            </div>

            <br />
            <span class="badge badge-success bg-danger">User Credentials..!</span><hr />
            <div class="row">

                    <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtUserName" class="form-label">UserName</label>

                        <asp:TextBox ID="txtUserName" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="txtPassword" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-input"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group py-2">
                        <label for="ddlRole" class="form-label">Employee Role<span class="text-danger">*</span></label>
                         <asp:DropDownList ID="ddlRole" runat="server" class="form-control " required>
                            <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                           <asp:ListItem Value="Reception" Text="Reception"></asp:ListItem>
                            <asp:ListItem Value="Medicine" Text="Medicine"></asp:ListItem>
                            <asp:ListItem Value="Laboratory" Text="Laboratory"></asp:ListItem>
                            <asp:ListItem Value="Nurse" Text="Nurse"></asp:ListItem>
                            <asp:ListItem Value="Support staff" Text="Support staff"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

            </div>
            <br />
            <span class="badge badge-success bg-warning">Financial Information..!</span><hr />

            <div class="col-lg-12">
                <asp:CheckBox ID="financeCheck" CssClass="px-2 py-5" AutoPostBack="true" runat="server" OnCheckedChanged="financeCheck_CheckedChanged"  /><span>Do you want to add Financial Information..?</span>
            </div>
            <br />
            <asp:Panel ID="financeView" runat="server" Visible="false">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                        <label for="txtaccno" class="form-label">Account No</label>
                            <asp:TextBox ID="txtaccno" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                        <label for="txtIFSC" class="form-label">IFSC Code</label>
                            <asp:TextBox ID="txtIFSC" runat="server"  class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                        <label for="txtAccHolder" class="form-label">Account Holder Name</label>
                            <asp:TextBox ID="txtAccHolder" runat="server"  class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                        <label for="txtBankName" class="form-label">Bank Name</label>

                            <asp:TextBox ID="txtBankName" runat="server" class="form-control form-control-input"></asp:TextBox>
                        </div>
                    </div>
                </div>

            </asp:Panel>
                 <asp:Button ID="btnSave" runat="server" Text="Register Employee" class="btn btn-success mx-3 my-2" OnClick="btnSave_Click"  />
                 <asp:Button ID="btnUpdate" runat="server" Text="Update Employee" class="btn btn-success mx-3 my-2" OnClick="btnUpdate_Click"/>
            <asp:LinkButton ID="Emplistbtn" runat="server" class="btn btn-info mx-3 my-2" OnClick="Emplistbtn_Click">Employee list</asp:LinkButton>

        </div>

    </asp:Panel>



    <asp:Panel runat="server" ID="ViewEmp">
         <h2 class="text-center py-2 text-info"><u><b>Employee Details..!</b></u></h2>
    <br />
        <div class="row">
           
            <div class="col-lg-8">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT [EmpID], [Name], [Age], [gender], [Contact], [Salary], [username], [password], [role] FROM [Employee]"></asp:SqlDataSource>
                <asp:LinkButton ID="newDocbtn" runat="server" class="btn btn-success mx-3 my-2" OnClick="newDocbtn_Click">Add New Employee</asp:LinkButton>
            </div>
            
        </div>

       <div class="py-3 px-3 rounded">
           <asp:GridView ID="EmpView" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

               <Columns>
                   <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                   <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                   <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                   <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                   <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                   <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                   <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />

                   <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                             <asp:LinkButton ID="linkView" runat="server" CommandArgument='<% # Eval("EmpID")%>'> <i class="lar la-eye bg-success"></i></i></asp:LinkButton>
                       <asp:LinkButton ID="linkSelect" runat="server" CommandArgument='<% # Eval("EmpID")%>' OnClick="linkSelect_Click"> <i class="lar la-edit bg-warning mx-2"></i></asp:LinkButton>
                       <asp:LinkButton ID="linkdelete" runat="server" CommandArgument='<% # Eval("EmpID")%>' onclick="linkdelete_Click"><i class="lar la-trash-alt bg-danger"></i></i></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

               </Columns>

           </asp:GridView>
           </div>

    </asp:Panel>

</asp:Content>
