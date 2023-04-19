using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Guest
{
    public partial class Appointment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

       
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtusername.Text= Session["username"].ToString();
            //tstusername.Text = txtusername.Text;

            if (!IsPostBack)
            {
                getdate();
            }
        }

        protected void btnappointment_Click(object sender, EventArgs e)
        {

            try
            {

                string prefix = "APP", Name = txtname.Text.Trim(), Phone = txtphone.Text.Trim(), Email = txtemail.Text.Trim(), Appointment_Date = txtdate.Text.Trim(), Address = txtaddress.Text.Trim(), City = txtcity.Text.Trim(), state = txtstate.Text.Trim(), DoctorName = ddlDocList.SelectedValue.Trim(), ConsultTime = ddlCunsultTime.Text.Trim(), Disease = txtdisease.InnerText.Trim(), username = Session["username"].ToString();


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Appointment_add_SP '"+ prefix + "','"+ Name + "','"+ Phone + "','"+ Email + "','"+ Appointment_Date + "','"+ Address + "','"+ City + "','"+ state + "','"+ DoctorName + "','"+ ConsultTime + "','"+ Disease + "','"+ username + "'",con);
                cmd.ExecuteNonQuery();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User added !\", \"success\")", true);
                txtname.Text = "";
                txtphone.Text = "";
                txtemail.Text = "";
                txtdate.Text = "";
                txtaddress.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                ddlDocList.Text="";
                ddlCunsultTime.Text = "";
                txtdisease.Value ="";
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }



        }
        //userdefine function

        void getdate()
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Appointment_DOCTORlist_SP", con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            ddlDocList.DataSource = dt;
            ddlDocList.DataBind();
            ddlDocList.Items.Insert(0, new ListItem("--Select Docotr --", "0"));


        }

    }
}