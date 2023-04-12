<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Admin.Master" AutoEventWireup="true" CodeBehind="DoctorList.aspx.cs" Inherits="BkHospital.Hospital.AdminDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
            <div class="mainCard">
                 <div class="cards">
                   <div class="card-container">
                       <div class="number">67</div>
                       <div class="card-name">Appointmant</div>
                   </div>
                    <div class="icon-box">
                         <i class="las la-briefcase-medical"> </i>
                    </div>
                </div>
                <div class="cards">
                   <div class="card-container">
                       <div class="number">200+</div>
                       <div class="card-name">New Patients</div>
                   </div>
                    <div class="icon-box">
                         <i class="las la-wheelchair"> </i>
                    </div>
                </div>
                <div class="cards">
                   <div class="card-container">
                       <div class="number"> 8</div>
                       <div class="card-name">Operation</div>
                   </div>
                    <div class="icon-box">
                         <i class="las la-bed"> </i>
                    </div>
                </div>
                 <div class="cards">
                   <div class="card-container">
                       <div class="number">$5000</div>
                       <div class="card-name">Earning</div>
                   </div>
                    <div class="icon-box">
                         <i class="las la-dollar-sign"> </i>
                    </div>
                </div>
            </div>


                <div class="mytables">
                    <div class="last-appointment">
                        <div class="heading">
                            <h2>Last Appoinment</h2>
                            <a href="#" class="mybtn">View All</a>
                        </div>

                         <table class="appoointment">
                        <thead>
                            <td>Name</td>
                            <td>Doctor</td>
                            <td>Condition</td>
                            <td>Action</td>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>Normal</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                             <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>Normal</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                             <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>Normal</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                                  <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>Normal</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                            </tr>
                        </tbody>

                    </table>

                    </div>

                   
                    

                    <div class="doctor-visiting">
                        <div class="heading">
                            <h2>Doctor Visiting</h2>
                            <a href="#" class="mybtn">View All</a>
                        </div>

                          <table class="appoointment">
                        <thead>
                            <td>Name</td>
                            <td>Doctor</td>
                            <td>Action</td>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                             <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                             <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                                  <tr>
                                <td>Anshu kr</td>
                                <td>Dr. Anshu</td>
                                <td>
                                    <i class="lar la-eye"></i>
                                    <i class="lar la-edit"></i>
                                    <i class="lar la-trash-alt"></i>
                                </td>
                            </tr>
                            </tr>
                        </tbody>

                    </table>

                    </div>
                </div>







</asp:Content>
