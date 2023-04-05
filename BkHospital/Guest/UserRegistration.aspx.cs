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
    public partial class UserRegistration : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ckeckuserExists())
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"UserName allready Exist !\", \"error\")", true);

            }
            else
            {
                userregister();

            }
        }

      bool ckeckuserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = ("SELECT * from UserRegistration where username = '" + txtusername.Text.Trim() + "';");
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }

        //user  define funtion
        void userregister()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "INSERT INTO UserRegistration (First_name,last_name,email,address,phone,city,state,country,username,password) values          (@fstname,@lastname,@email,@address,@phone,@city,@state,@country,@username,@password)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@fstname", txtfstname.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", txtlastname.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txtphone.Text.Trim());
                cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@state", txtstate.Text.Trim());
                cmd.Parameters.AddWithValue("@country", txtcountry.Text.Trim());
                cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User added !\", \"success\")", true);
                Response.Redirect("Home.aspx");
                txtfstname.Text = "";
                txtlastname.Text = "";
                txtemail.Text = "";
                txtaddress.Text = "";
                txtphone.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                txtcountry.Text = "";
                txtusername.Text = "";
                txtpassword.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}