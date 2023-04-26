using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Hospital
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Response.Write("<script>alert('" + Session["role"] + "');</script>");

                //if (Session["role"] == "Admin")
                //{

                //}
                //else if (Session["role"] == "Reception")
                //{
                //    DocListLink.Visible = true;
                //}
                //else if (Session["role"] == "Medicine")
                //{

                //}
                //else if (Session["role"] == "Laboratory")
                //{

                //}

            }
            catch (Exception ex)
            {

            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Logout');</script>");
            Response.Redirect("~/Guest/Home.aspx");
            Session["username"] = "";
            Session["Name"] = "";
            Session["role"] = "";

            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal(\"Success!\", \"Logout Successfully !\", \"info\")", true);
        }

        protected void DashboardLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Hospital/AdminHome.aspx");
        }

        protected void AppointmentLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Hospital/Apponimentlist.aspx");

        }

        protected void DocListLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Hospital/DocotorList.aspx");

        }
    }
}