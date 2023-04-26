<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="BkHospital.Hospital.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="login_div" data-aos="fade-up"> 
            <div class=" mt-5 mx-5 py-3 px-2">
                <h2 class="text-center my-2 text-warning"><u><b>Admin Sign In..!</b></u></h2>
                <div class="container">
                    <div class="mb-3">
                        <label for="txtuserName" class="form-label">User Name</label>
                        <asp:TextBox ID="txtloginuserName" runat="server" required class="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtPassword" class="form-label">Password</label>
                        <asp:TextBox ID="txtloginPassword" runat="server" required class="form-control"></asp:TextBox>

                    </div>
                    <div class="mb-3">
                        <label for="txtPassword" class="form-label">User Role</label>
                        <asp:DropDownList ID="ddlrole" runat="server" required class="form-control">
                            <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="Admin" Text="Admin"></asp:ListItem>
                            <asp:ListItem Value="Reception" Text="Reception"></asp:ListItem>
                            <asp:ListItem Value="Medicine" Text="Medicine"></asp:ListItem>
                            <asp:ListItem Value="Laboratory" Text="Laboratory"></asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                        <label class="form-check-label" for="exampleCheck1">Remember me..!</label>
                    </div>
                    <asp:Button ID="btnSave" runat="server" Text="Login" class="btn btn-success mx-3 my-2" OnClick="btnSave_Click" />
                    <a href="../Guest/Home.aspx" class="btn">Back</a>
                </div>
            </div>
        </div>


</asp:Content>
