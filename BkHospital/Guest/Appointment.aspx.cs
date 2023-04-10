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
            txtusername.Text= Session["username"].ToString();
            tstusername.Text = txtusername.Text;
        }

        protected void btnappointment_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "INSERT INTO Appointmant (Name,Phone,Email,Appointment_Date,Address,City,state,Disease,username) values          (@name,@phone,@email,@date,@address,@city,@state,@desease,@username)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@date", txtdate.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@state", txtstate.Text.Trim());
                cmd.Parameters.AddWithValue("@desease", txtdisease.InnerText.Trim());
                cmd.Parameters.AddWithValue("@username",tstusername.Text.Trim());   

                cmd.ExecuteNonQuery();
                con.Close();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User added !\", \"success\")", true);
                Response.Redirect("Home.aspx");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}