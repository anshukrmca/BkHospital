using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BkHospital.Hospital
{
    public partial class DoctorList : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {


            try
            {

                //string filepath = "~/DoctorIMG/hoslogo.png";
                //string filename = Path.GetFileName(txtDocImg.PostedFile.FileName);
                //txtDocImg.SaveAs(Server.MapPath("DoctorIMG/" + filename));
                //filepath = "~/DoctorIMG/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "insert into DoctorTBL (prefix,DoctorName,DoctorQualification,DoctorFee,DoctorEmail,DoctorAddress,DoctorPhone,DoctorCity,DoctorState,DoctorCountry,DoctorSpecilization,DoctorDocImagae,DoctorAbout,DoctorAccount,DoctorIFSC,DoctorAccHolderName,DoctorBankName) values('DOC',@fullname,@doctorQualification,@doctorFee,@doctorEmail,@doctorAddress,@doctorPhone,@doctorCity,@doctorState,@doctorCountry,@doctorSpecility,@doctorImg,@doctorAbout,@doctorAccount,@doctorIFSC,@doctorACCholderName,@doctorBankName);";
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
                cmd.Parameters.AddWithValue("@doctorImg", txtDocImg.ToString());
                cmd.Parameters.AddWithValue("@doctorAbout", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorAccount", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorIFSC", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorACCholderName", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@doctorBankName", txtphone.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User added !\", \"success\")", true);
                Response.Redirect("~/AdminDashBoard.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}