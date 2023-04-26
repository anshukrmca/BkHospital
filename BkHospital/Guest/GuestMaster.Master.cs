using BkHospital.Hospital;
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
    public partial class GuestMaster : System.Web.UI.MasterPage
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                //if (Session["role"].Equals(""))
                //{
                //    profile_link.Visible = false;
                //    logoutLink.Visible = false;
                //}
                //else if (Session["role"].Equals("user"))
                //{
                //    profile_link.Visible = true;
                //        logoutLink.Visible = true;
                //    loginlink.Visible = false;
                //}

                if (Session["role"] == "")
                {
                    profile_link.Visible = false;
                    logoutLink.Visible = false;
                    appoinmentlink.Visible = false;
                }
                else if (Session["role"] == "user")
                {
                    profile_link.Visible = true;
                    profile_link.Text= "welcome " + Session["First_name"].ToString();
                    profile_link.Font.Size = 17;
                    
                    logoutLink.Visible = true;
                    appoinmentlink.Visible = true;
                    
                    loginlink.Visible = false;
                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Home.aspx");
            Session["username"] = "";
            Session["First_name"] = "";
            Session["role"] = "";

            profile_link.Visible = false;
            appoinmentlink.Visible = false;
            logoutLink.Visible = false;
            loginlink.Visible = true;
            Response.Redirect("UserLogin.aspx");


        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Guest/UserLogin.aspx");
        }
        protected void appoinmentlink_click(object sender, EventArgs e)
        {
            Response.Redirect("Appointment.aspx");
        }
    }
}