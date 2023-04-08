<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="BkHospital.Hospital.AdminDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
      <div class="cards">
                    <div class="card-single">
                        <div>
                            <h1>55</h1>
                            <span>Customers</span>
                        </div>
                        <div><span class="las la-users"></span>

                        </div>
                    </div>

                     <div class="card-single">
                        <div>
                            <h1>55</h1>
                            <span>Project</span>
                        </div>
                        <div><span class="las la-clipboard-list"></span>

                        </div>
                    </div>

                     <div class="card-single">
                        <div>
                            <h1>55</h1>
                            <span>Order</span>
                        </div>
                        <div><span class="las la-users"></span>

                        </div>
                    </div>

                     <div class="card-single">
                        <div>
                            <h1>$55</h1>
                            <span>Incom</span>
                        </div>
                        <div><span class="las la-receipt"></span>

                        </div>
                    </div>
                </div>

                <div class="recent-grid">

                    <div class="project">
                        <div class="card">
                            <div class="card-header">
                                <h3>Recent Projects</h3>
                                <asp:Button ID="Button1" runat="server" Text="Button"/>
                               
                            </div>
                            <div class="card-body">
                                <table>
                                    <thead>
                                        <tr>
                                            <td>Project Title</td>
                                            <td>Department</td>
                                            <td>Status</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <td>UI/UX design</td>
                                        <td>web development</td>
                                        <td><span class="status"></span>review</td>
                                    </tbody>
                                </table>

                            </div>
                        </div>


                    </div>
                    <div class="customers">

                    </div>

                </div>


</asp:Content>
