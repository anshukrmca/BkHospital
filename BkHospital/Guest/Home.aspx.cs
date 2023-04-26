using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Guest
{
    public partial class Home : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void takeappointment_Click(object sender, EventArgs e)
        {
            try
            {

                if (Session["role"] == "")
                {
                    Response.Redirect("UserLogin.aspx");

                }
                else if (Session["role"] == "user")
                {
                    Response.Redirect("Appointment.aspx");

                }


            }
            catch (Exception ex)
            {

            }

        }

        protected void Savebtn_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "insert into Contact (prefix,Name,Phone,Email,QueryField) values('CON',@name,@phone,@email,@query);";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@query", txtQuery.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"We will contact you in few Hours !\", \"success\");", true);
                txtname.Text = "";
                txtphone.Text = "";
                txtemail.Text = "";
                txtQuery.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}