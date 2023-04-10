using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BkHospital.Hospital
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppoinmetList.aspx");
        }

        

        

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorList.aspx");
        }

        protected void LabLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Laboratory.aspx");
        }


      
        protected void opdLink(object sender, EventArgs e)
        {
            Response.Redirect("../Patients/OPD_petients.aspx");
        }
        protected void ipdLink(object sender, EventArgs e)
        {
            Response.Redirect("../Patients/IPD_petients.aspx");
        }

        protected void dashboardlink_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Hospital/AdminDashBoard.aspx");
            Page.ResolveClientUrl("~/Hospital/AdminDashBoard.aspx");

        }
    }
}