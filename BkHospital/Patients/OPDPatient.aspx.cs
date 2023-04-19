using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Patients
{
    public partial class OPDPatient : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DocList.DataBind();
                ViewPatient.Visible = true;
                DocList.Items.Insert(0, new ListItem("-- select --"));
            }
        }

        protected void medicalCheck_CheckedChanged(object sender, EventArgs e)
        {
            if (medicalCheck.Checked)
            {
                madicalView.Visible = true;
            }
            else
            {
                madicalView.Visible = false;
            }
        }

        protected void btnPSave_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime dateTime = DateTime.Now;


                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string query = "Insert into Patient (prefix, PName, PAge, Gender, GurdianName, Address, Contact, PType, CO_Nmae, P_Condition, Doctor, fee, PaymentMode, BP, SPO2, PluseRate, Weight, Teamprature, BSR, CardHolderName, CardNo, validDate, TPA_Group, InsuranceName, Insurance_No, CreatedDate) values ('PID', @pName, @pAge, @gender, @gurdianName, @address, @contact, @pType, @cO_Nmae, @p_Condition, @doctor, @Fee, @paymentMode, @bP, @sPO2, @pluseRate, @weight, @teamprature, @bSR, @cardHolderName, @cardNo, @ValidDate, @tPA_Group, @insuranceName, @insurance_No, @createdDate);";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@pName", txtPname.Text.Trim());
                        cmd.Parameters.AddWithValue("@pAge", txtP_age.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", ddlGender.Text.Trim());
                        cmd.Parameters.AddWithValue("@gurdianName", txtG_name.Text.Trim());
                        cmd.Parameters.AddWithValue("@address", txtaddrss.Text.Trim());
                        cmd.Parameters.AddWithValue("@contact", txtContact.Text.Trim());
                        cmd.Parameters.AddWithValue("@pType", ddlP_type.Text.Trim());
                        cmd.Parameters.AddWithValue("@cO_Nmae", txtCoNme.Text.Trim());
                        cmd.Parameters.AddWithValue("@p_Condition", ddlConsultype.Text.Trim());
                        cmd.Parameters.AddWithValue("@doctor", DocList.Text.Trim());
                        cmd.Parameters.AddWithValue("@Fee", txtfee.Text.Trim());
                        cmd.Parameters.AddWithValue("@paymentMode", ddlCashType.Text.Trim());
                        cmd.Parameters.AddWithValue("@bP", txtBP.Text.Trim());
                        cmd.Parameters.AddWithValue("@sPO2", txtSPO2.Text.Trim());
                        cmd.Parameters.AddWithValue("@pluseRate", txtPR.Text.Trim());
                        cmd.Parameters.AddWithValue("@weight", txtweight.Text.Trim());
                        cmd.Parameters.AddWithValue("@teamprature", txttemp.Text.Trim());
                        cmd.Parameters.AddWithValue("@bSR", txtBSR.Text.Trim());
                        cmd.Parameters.AddWithValue("@cardHolderName", txtCHnmae.Text.Trim());
                        cmd.Parameters.AddWithValue("@cardNo", txtCardNo.Text.Trim());
                        cmd.Parameters.AddWithValue("@ValidDate", txtvalidDate.Text.Trim());
                        cmd.Parameters.AddWithValue("@tPA_Group", ddlTpaGroup.Text.Trim());
                        cmd.Parameters.AddWithValue("@insuranceName", ddlInsuranceName.Text.Trim());
                        cmd.Parameters.AddWithValue("@insurance_No", txtInsuranceNo.Text.Trim());
                        cmd.Parameters.AddWithValue("@createdDate", dateTime);

                        cmd.ExecuteNonQuery();
                        con.Close();
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Patient Add Successfull !\", \"success\");\r\n", true);
                        PatientView.DataBind();
                        AddPatient.Visible = false;
                        ViewPatient.Visible = true;
                        emptyInputField();
                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }

        }

        protected void getId_click(object sender, EventArgs e)
        {
            string PatientID = Convert.ToString((sender as LinkButton).CommandArgument);
            //Response.Write("<script>alert('" + PatientID + "')</script>");

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string query = "select * from Patient WHere PatientId = '" + PatientID + "';";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                txtPatientID.Text = dr.GetValue(2).ToString();
                                txtPname.Text = dr.GetValue(3).ToString();
                                txtP_age.Text = dr.GetValue(4).ToString();
                                ddlGender.Text = dr.GetValue(5).ToString();
                                txtG_name.Text = dr.GetValue(6).ToString();
                                txtaddrss.Text = dr.GetValue(7).ToString();
                                txtContact.Text = dr.GetValue(8).ToString();
                                ddlP_type.Text = dr.GetValue(9).ToString();
                                txtCoNme.Text = dr.GetValue(10).ToString();
                                ddlConsultype.Text = dr.GetValue(11).ToString();
                                DocList.Text = dr.GetValue(12).ToString();
                                txtfee.Text = dr.GetValue(13).ToString();
                                ddlCashType.Text = dr.GetValue(14).ToString();
                                txtBP.Text = dr.GetValue(15).ToString();
                                txtSPO2.Text = dr.GetValue(16).ToString();
                                txtPR.Text = dr.GetValue(17).ToString();
                                txtweight.Text = dr.GetValue(18).ToString();
                                txttemp.Text = dr.GetValue(19).ToString();
                                txtBSR.Text = dr.GetValue(20).ToString();
                                txtCHnmae.Text = dr.GetValue(21).ToString();
                                txtCardNo.Text = dr.GetValue(22).ToString();
                                txtvalidDate.Text = dr.GetValue(23).ToString();
                                ddlTpaGroup.Text = dr.GetValue(24).ToString();
                                ddlInsuranceName.Text = dr.GetValue(25).ToString();
                                txtInsuranceNo.Text = dr.GetValue(26).ToString();

                                AddPatient.Visible = true;
                                ViewPatient.Visible = false;
                                btnPSave.Visible = false;
                                btnPUpdate.Visible = true;
                            }

                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"Doctor Not Found !\", \"error\")", true);
                        }

                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }

        }

        protected void btnPUpdate_Click(object sender, EventArgs e)
        {

            try
            {

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string query = "update Patient  SET PName = @pName , PAge = @pAge , Gender = @gender , GurdianName =  @gurdianName , Address = @address , Contact = @contact, PType = @pType , CO_Nmae = @cO_Nmae , P_Condition = @p_Condition , Doctor = @doctor , fee = @Fee, PaymentMode = @paymentMode , BP = @bP , SPO2 = @sPO2 , PluseRate = @pluseRate , Weight= @weight , Teamprature = @teamprature , BSR = @bSR, CardHolderName = @cardHolderName, CardNo = @cardNo, validDate = @ValidDate, TPA_Group = @tPA_Group, InsuranceName = @insuranceName , Insurance_No =  @insurance_No WHERE PatientID = '" + txtPatientID.Text.Trim() + "' ;";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@PatientID", txtPatientID.Text.Trim());
                        cmd.Parameters.AddWithValue("@pName", txtPname.Text.Trim());
                        cmd.Parameters.AddWithValue("@pAge", txtP_age.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", ddlGender.Text.Trim());
                        cmd.Parameters.AddWithValue("@gurdianName", txtG_name.Text.Trim());
                        cmd.Parameters.AddWithValue("@address", txtaddrss.Text.Trim());
                        cmd.Parameters.AddWithValue("@contact", txtContact.Text.Trim());
                        cmd.Parameters.AddWithValue("@pType", ddlP_type.Text.Trim());
                        cmd.Parameters.AddWithValue("@cO_Nmae", txtCoNme.Text.Trim());
                        cmd.Parameters.AddWithValue("@p_Condition", ddlConsultype.Text.Trim());
                        cmd.Parameters.AddWithValue("@doctor", DocList.Text.Trim());
                        cmd.Parameters.AddWithValue("@Fee", txtfee.Text.Trim());
                        cmd.Parameters.AddWithValue("@paymentMode", ddlCashType.Text.Trim());
                        cmd.Parameters.AddWithValue("@bP", txtBP.Text.Trim());
                        cmd.Parameters.AddWithValue("@sPO2", txtSPO2.Text.Trim());
                        cmd.Parameters.AddWithValue("@pluseRate", txtPR.Text.Trim());
                        cmd.Parameters.AddWithValue("@weight", txtweight.Text.Trim());
                        cmd.Parameters.AddWithValue("@teamprature", txttemp.Text.Trim());
                        cmd.Parameters.AddWithValue("@bSR", txtBSR.Text.Trim());
                        cmd.Parameters.AddWithValue("@cardHolderName", txtCHnmae.Text.Trim());
                        cmd.Parameters.AddWithValue("@cardNo", txtCardNo.Text.Trim());
                        cmd.Parameters.AddWithValue("@ValidDate", txtvalidDate.Text.Trim());
                        cmd.Parameters.AddWithValue("@tPA_Group", ddlTpaGroup.Text.Trim());
                        cmd.Parameters.AddWithValue("@insuranceName", ddlInsuranceName.Text.Trim());
                        cmd.Parameters.AddWithValue("@insurance_No", txtInsuranceNo.Text.Trim());

                        cmd.ExecuteNonQuery();
                        con.Close();
                        PatientView.DataBind();
                        AddPatient.Visible = false;
                        ViewPatient.Visible = true;
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Patient Update Successfull !\", \"info\");\r\n", true);
                        emptyInputField();
                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }

        }

        protected void delete_click(object sender, EventArgs e)
        {
            string PatientID = Convert.ToString((sender as LinkButton).CommandArgument);
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = ("DELETE FROM Patient  WHERE PatientID = '" + PatientID + "'");
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();
                con.Close();


                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Patient Delete Successfull !\", \"error\");\r\n", true);
                PatientView.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void newDocbtn_Click(object sender, EventArgs e)
        {
            AddPatient.Visible = true;
            ViewPatient.Visible = false;
            emptyInputField();
        }

        protected void PatientList_Click(object sender, EventArgs e)
        {
            AddPatient.Visible = false;
            ViewPatient.Visible = true;
            emptyInputField();
        }

        public void emptyInputField()
        {
            txtPatientID.Text = "";
            txtPname.Text = "";
            txtP_age.Text = "";
            ddlGender.Text = "";
            txtG_name.Text = "";
            txtaddrss.Text = "";
            txtContact.Text = "";
            ddlP_type.Text = "";
            txtCoNme.Text = "";
            ddlConsultype.Text = "";
            DocList.SelectedIndex= 0;
            txtfee.Text = "";
            ddlCashType.Text = "";
            txtBP.Text = "";
            txtSPO2.Text = "";
            txtweight.Text = "";
            txttemp.Text = "";
            txtBSR.Text = "";
            txtCHnmae.Text = "";
            txtCardNo.Text = "";
            txtvalidDate.Text = "";
            ddlTpaGroup.Text = "";
            ddlInsuranceName.Text = "";
            txtInsuranceNo.Text = "";
        }


    }
}