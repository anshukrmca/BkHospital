<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Apponimentlist.aspx.cs" Inherits="BkHospital.Hospital.Apponimentlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center my-2 py-3 text-info"><u><b>Appointment Details..!</b></u></h2>
    <br />
    <div class="py-3 px-25 mx-3 rounded">

        <asp:GridView ID="AppinmentGrid" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AppointmentID" HeaderText="App ID" ReadOnly="True" SortExpression="AppointmentID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Appointment_Date" HeaderText="App Date" SortExpression="Appointment_Date" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                <asp:BoundField DataField="ConsultTime" HeaderText="Time" SortExpression="ConsultTime" />
                <asp:BoundField DataField="Disease" HeaderText="Disease" SortExpression="Disease" />
                <asp:BoundField DataField="username" HeaderText="Booked BY" SortExpression="username" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT * FROM [Appointmant]"></asp:SqlDataSource>
    </div>
</asp:Content>
