using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Guest
{
    public partial class Home : System.Web.UI.Page
    {
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
    }
}