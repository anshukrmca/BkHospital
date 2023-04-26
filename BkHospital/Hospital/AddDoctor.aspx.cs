using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BkHospital.Hospital
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString; 

        protected void Page_Load(object sender, EventArgs e)
        {
            DocList.Visible = true;
            DoctorGriv.DataBind();


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "insert into DoctorTBL (prefix,DoctorName,DoctorQualification,DoctorFee,DoctorEmail,DoctorAddress,DoctorPhone,DoctorCity,DoctorState,DoctorCountry,DoctorSpecilization,DoctorDoctorCunsultTime,DoctorAbout,DoctorAccount,DoctorIFSC,DoctorAccHolderName,DoctorBankName) values('DOC',@fullname,@doctorQualification,@doctorFee,@doctorEmail,@doctorAddress,@doctorPhone,@doctorCity,@doctorState,@doctorCountry,@doctorSpecility,@doctorDoctorCunsultTime,@doctorAbout,@doctorAccount,@doctorIFSC,@doctorACCholderName,@doctorBankName);";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@fullname", txtfullname.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorQualification", txtQualification.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorFee", txtFee.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorEmail", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorAddress", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorPhone", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorCity", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorState", txtstate.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorCountry", txtcountry.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorSpecility", txtSpecialization.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorDoctorCunsultTime", ddlCunsultTime.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@doctorAbout", txtaboutDoc.Value.Trim());
                cmd.Parameters.AddWithValue("@doctorAccount", txtDocAccount.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorIFSC", txtDocIFSC.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorACCholderName", txtDocAccHolder.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorBankName", txtDocBankName.Text.Trim());



                cmd.ExecuteNonQuery();
                DoctorGriv.DataBind();
                con.Close();
                DocList.Visible = true;
                DocAdd.Visible = false;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Add Successfull !\", \"success\");", true);
                txtfullname.Text = "";
                txtQualification.Text = "";
                txtFee.Text = "";
                txtemail.Text = "";
                txtaddress.Text = "";
                txtphone.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                txtcountry.Text = "";
                txtSpecialization.Text = "";
                ddlCunsultTime.Text = "";
                txtaboutDoc.Value = "";
                txtDocAccount.Text = "";
                txtDocIFSC.Text = "";
                txtDocAccHolder.Text = "";
                txtDocBankName.Text = "";



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void newDocbtn_Click(object sender, EventArgs e)
        {
            DocAdd.Visible = true;
            DocList.Visible = false;
            btnUpdata.Visible = false;
        }

        protected void shuowDocList_Click(object sender, EventArgs e)
        {
            DocAdd.Visible = false;
            DocList.Visible = true;
        }


        protected void btnUpdata_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string query = "UPDATE DoctorTBL SET DoctorName = @DoctorName , DoctorQualification = @DoctorQualification ,DoctorFee = @DoctorFee , DoctorEmail = @DoctorEmail , DoctorAddress = @DoctorAddress, DoctorPhone = @DoctorPhone , DoctorCity = @DoctorCity , DoctorState = @DoctorState , DoctorCountry = @DoctorCountry , DoctorSpecilization = @DoctorSpecilization , DoctorDoctorCunsultTime = @DoctorDoctorCunsultTime , DoctorAbout = @DoctorAbout ,DoctorAccount = @DoctorAccount , DoctorIFSC = @DoctorIFSC , DoctorAccHolderName = @DoctorAccHolderName , DoctorBankName = @DoctorBankName Where DoctorID = '" + txtDocID.Text.Trim()+"'";
                   
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@DoctorName", txtfullname.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorQualification", txtQualification.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorFee", txtFee.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorEmail", txtemail.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorAddress", txtaddress.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorPhone", txtphone.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorCity", txtcity.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorState", txtstate.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorCountry", txtcountry.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorSpecilization", txtSpecialization.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorDoctorCunsultTime", ddlCunsultTime.SelectedValue.Trim());
                        cmd.Parameters.AddWithValue("@DoctorAbout", txtaboutDoc.Value.Trim());
                        cmd.Parameters.AddWithValue("@DoctorAccount", txtDocAccount.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorIFSC", txtDocIFSC.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorAccHolderName", txtDocAccHolder.Text.Trim());
                        cmd.Parameters.AddWithValue("@DoctorBankName", txtDocBankName.Text.Trim());

                        cmd.ExecuteNonQuery();
                        DoctorGriv.DataBind();
                        con.Close();
                        DocList.Visible = true;
                        DocAdd.Visible = false;
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Doctor Update Successfull !\", \"success\");", true);
                    }
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }


        protected void getId(object sender, EventArgs e)
        {
            string doctorid = Convert.ToString((sender as LinkButton).CommandArgument);
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "SELECT * from DoctorTBL where DoctorID = '" + doctorid + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtDocID.Text = dr.GetValue(2).ToString();
                        txtfullname.Text = dr.GetValue(3).ToString();
                        txtQualification.Text = dr.GetValue(4).ToString();
                        txtFee.Text = dr.GetValue(5).ToString();
                        txtemail.Text = dr.GetValue(6).ToString();
                        txtaddress.Text = dr.GetValue(7).ToString();
                        txtphone.Text = dr.GetValue(8).ToString();
                        txtcity.Text = dr.GetValue(9).ToString();
                        txtstate.Text = dr.GetValue(10).ToString();
                        txtcountry.Text = dr.GetValue(11).ToString();
                        txtSpecialization.Text = dr.GetValue(12).ToString();
                        ddlCunsultTime.Text = dr.GetValue(13).ToString();
                        txtaboutDoc.Value = dr.GetValue(14).ToString();
                        txtDocAccount.Text = dr.GetValue(15).ToString();
                        txtDocIFSC.Text = dr.GetValue(16).ToString();
                        txtDocAccHolder.Text = dr.GetValue(17).ToString();
                        txtDocBankName.Text = dr.GetValue(18).ToString();

                        DocAdd.Visible = true;
                        DocList.Visible = false;
                        btnSave.Visible = false;
                        btnUpdata.Visible = true;
                    }

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"Doctor Not Found !\", \"error\")", true);
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


        protected void dataDelete(object sender, EventArgs e)
        {
            string doctorid = Convert.ToString((sender as LinkButton).CommandArgument);

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = ("DELETE FROM DoctorTBL  WHERE DoctorID = '" + doctorid + "'");
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();
                con.Close();

                DocAdd.Visible = false;
                DocList.Visible = true;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Delete Successfull !\", \"success\");\r\n", true);
                DoctorGriv.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }



    }
}