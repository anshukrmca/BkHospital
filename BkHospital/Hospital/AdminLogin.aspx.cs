using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Hospital
{
    public partial class AdminLogin : System.Web.UI.Page
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
            string query = ("SELECT * from Employee where username = '" + txtloginuserName.Text.Trim() + "' AND password = '" + txtloginPassword.Text.Trim() + "' AND role = '"+ddlrole.Text.Trim()+"' ;");
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //Response.Write("<script>alert('"+dr.GetValue(0).ToString()+"');</script>");

                    Session["username"] = dr.GetValue(14).ToString();
                    Session["Name"] = dr.GetValue(3).ToString();
                    Session["role"] = dr.GetValue(16).ToString();


                    //Response.Write("<script>alert('" + Session["role"] + "');</script>");
                    //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal(\"Success!\", \"Successfully login !\", \"success\")", true);
                   Response.Redirect("AdminHome.aspx");


                }

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"UserName or password wrong !\", \"error\")", true);
            }


        }
    }
}