using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BkHospital.Guest
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getUserDetail();
            }
        }
        protected void brnupdate_Click(object sender, EventArgs e)
        {
            updateuser();
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User not updated !\", \"success\")", true);

        }


        void updateuser()
        {
            string password = "";
            if (txtConformPass.Text.Trim() == "")
            {
                password = txtpassword.Text.Trim();
            }
            else
            {
                password = txtConformPass.Text.Trim();
            }

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    string query = "UPDATE UserRegistration SET First_name = @fstname,last_name=@lastname,email=@email,address=@address,phone=@phone,city=@city,state=@state,country=@country,username=@username,password=@password WHERE username= '" + txtusername.Text.Trim() + "'";

                    using(SqlCommand cmd = new SqlCommand(query, con))
                    {
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

                        int result = cmd.ExecuteNonQuery();
                        con.Close();

                        if (result > 0)
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User updated !\", \"success\")", true);
                            getUserDetail();
                        }
                        else
                        {

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"User not updated !\", \"error\")", true);
                        }

                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getUserDetail()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = ("SELECT * from UserRegistration where username = '" + Session["username"].ToString() + "';");
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtfstname.Text=dr.GetValue(0).ToString();
                        txtlastname.Text=dr.GetValue(1).ToString() ;
                        txtemail.Text = dr.GetValue(2).ToString();
                        txtaddress.Text = dr.GetValue(3).ToString();
                        txtphone.Text = dr.GetValue(4).ToString();
                        txtcity.Text = dr.GetValue(5).ToString();
                        txtstate.Text = dr.GetValue(6).ToString();
                        txtcountry.Text = dr.GetValue(7).ToString();
                        txtusername.Text = dr.GetValue(8).ToString();
                        txtpassword.Text = dr.GetValue(9).ToString();
                    }

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"User Not Found !\", \"error\")", true);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

      
    }
}