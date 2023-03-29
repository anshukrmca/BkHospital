﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="BkHospital.Guest.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="loginforrm1">
        <div class="login_div"> 
            <div class=" mt-5 mx-5 py-5 px-2">
                <h2 class="text-center my-2 text-warning"><u><b>Sign In..! or login</b></u></h2>
                <div class="container">
                    <div class="mb-3">
                        <label for="txtuserName" class="form-label">User Name</label>
                        <asp:TextBox ID="txtuserName" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtPassword" class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control"></asp:TextBox>

                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                        <label class="form-check-label" for="exampleCheck1">Remember me..!</label>
                    </div>
                    <asp:Button ID="btnSave" runat="server" Text="Login" class="btn btn-success mx-3" />
                    <a href="Home.aspx" class="btn">Back</a>
                    <a></a>
                </div>
            </div>
        </div>
    </form>


</asp:Content>