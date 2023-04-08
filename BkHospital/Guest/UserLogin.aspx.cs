using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Guest
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = ("SELECT * from UserRegistration where username = '" +txtloginuserName.Text.Trim() + "' AND password = '"+ txtloginPassword.Text.Trim() +"' ;");
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader(); 
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    //Response.Write("<script>alert('"+dr.GetValue(0).ToString()+"');</script>");

                    Session["username"] = dr.GetValue(8).ToString();
                    Session["First_name"] = dr.GetValue(0).ToString();
                    Session["role"] = "user";

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal(\"Success!\", \"Successfully login !\", \"success\")",true);
                    Response.Redirect("Home.aspx");


                }
                
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"UserName or password wrong !\", \"error\")", true);
            }

        }
    
      
    }
}