<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DocotorList.aspx.cs" Inherits="BkHospital.Hospital.DocotorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <asp:Panel ID="DocList" runat="server">

      <h2 class="text-center my-2 py-3 text-info"><u><b>Doctor Details..!</b></u></h2>
    <br />
    <div class="py-3 px-25 mx-3 rounded">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BkHospitalDBConnectionString %>" SelectCommand="SELECT [DoctorID], [DoctorName], [DoctorQualification], [DoctorFee], [DoctorPhone], [DoctorSpecilization], [DoctorDoctorCunsultTime], [DoctorEmail] FROM [DoctorTBL]"></asp:SqlDataSource>
            <asp:GridView class="table table-striped table-hover" ID="DoctorGriv" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="DoctorID" HeaderText="ID" ReadOnly="True" SortExpression="DoctorID" />
                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" SortExpression="DoctorName" />
                    <asp:BoundField DataField="DoctorQualification" HeaderText="Qualification" SortExpression="DoctorQualification" />
                    <asp:BoundField DataField="DoctorFee" HeaderText="Fee" SortExpression="DoctorFee" />
                    <asp:BoundField DataField="DoctorPhone" HeaderText="Phone" SortExpression="DoctorPhone" />
                    <asp:BoundField DataField="DoctorSpecilization" HeaderText="Specilization" SortExpression="DoctorSpecilization" />
                    <asp:BoundField DataField="DoctorDoctorCunsultTime" HeaderText="Cunsult Time" SortExpression="DoctorDoctorCunsultTime" />
                    <asp:BoundField DataField="DoctorEmail" HeaderText="Email" SortExpression="DoctorEmail" />
                </Columns>

            </asp:GridView>
        </div>

    </asp:Panel>


</asp:Content>
