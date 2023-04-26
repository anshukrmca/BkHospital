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

namespace BkHospital.Hospital
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            EmpView.DataBind();
        }
        protected void financeCheck_CheckedChanged(object sender, EventArgs e)
        {
            if (financeCheck.Checked)
            {
                financeView.Visible = true;
            }
            else
            {
                financeView.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "insert into Employee  (prefix,Name,Age,gender,FatherName,Address,Contact,Email,DOB,City,DOJ,Salary,username,password,role,AccNo,IFSC,AccHDName,BankName) VALUES ('EMP',@Name,@Age,@gender,@FatherName,@Address,@Contact,@Email,@DOB,@City,@DOJ,@Salary,@username,@password,@role,@AccNo,@IFSC,@AccHDName,@BankName);";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@Age", txt_age.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", ddlGender.Text.Trim());
                cmd.Parameters.AddWithValue("@FatherName", txtG_name.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtaddrss.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text.Trim());
                cmd.Parameters.AddWithValue("@City", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@DOJ", txtdoj.Text.Trim());
                cmd.Parameters.AddWithValue("@Salary", txtSalary.Text.Trim());
                cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@role", ddlRole.Text.Trim());
                cmd.Parameters.AddWithValue("@AccNo", txtaccno.Text.Trim());
                cmd.Parameters.AddWithValue("@IFSC", txtIFSC.Text.Trim());
                cmd.Parameters.AddWithValue("@AccHDName", txtAccHolder.Text.Trim());
                cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Add Successfull !\", \"success\");", true);
                txtname.Text = "";
                txt_age.Text = "";
                ddlGender.Text = "";
                txtG_name.Text = "";
                txtaddrss.Text = "";
                txtContact.Text = "";
                txtemail.Text = "";
                txtDOB.Text = "";
                txtcity.Text = "";
                txtdoj.Text = "";
                txtSalary.Text = "";
                txtUserName.Text = "";
                txtPassword.Text = "";
                ddlRole.Text = "";
                txtaccno.Text = "";
                txtIFSC.Text = "";
                txtAccHolder.Text = "";
                txtBankName.Text = "";

                AddEmp.Visible = false;
                ViewEmp.Visible = true;
                EmpView.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    
     
        protected void linkSelect_Click(object sender, EventArgs e)
        {
            string EmpID = Convert.ToString((sender as LinkButton).CommandArgument);


            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "SELECT * from Employee where EmpID = '" + EmpID + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtEmpID.Text = dr.GetValue(2).ToString();
                        txtname.Text = dr.GetValue(3).ToString();
                        txt_age.Text = dr.GetValue(4).ToString();
                        ddlGender.Text = dr.GetValue(5).ToString();
                        txtG_name.Text = dr.GetValue(6).ToString();
                        txtaddrss.Text = dr.GetValue(7).ToString();
                        txtContact.Text = dr.GetValue(8).ToString();
                        txtemail.Text = dr.GetValue(9).ToString();
                        txtDOB.Text = dr.GetValue(10).ToString();
                        txtcity.Text = dr.GetValue(11).ToString();
                        txtdoj.Text = dr.GetValue(12).ToString();
                        txtSalary.Text = dr.GetValue(13).ToString();
                        txtUserName.Text = dr.GetValue(14).ToString();
                        txtPassword.Text = dr.GetValue(15).ToString();
                        ddlRole.Text = dr.GetValue(16).ToString();
                        txtaccno.Text = dr.GetValue(17).ToString();
                        txtIFSC.Text = dr.GetValue(18).ToString();
                        txtAccHolder.Text = dr.GetValue(19).ToString();
                        txtBankName.Text = dr.GetValue(20).ToString();

                        btnSave.Visible=false;
                        ViewEmp.Visible=false;
                        AddEmp.Visible = true;
                      
                    }

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Error!\", \"Doctor Not Found !\", \"error\")", true);
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void linkdelete_Click(object sender, EventArgs e)
        {
            string EmpID = Convert.ToString((sender as LinkButton).CommandArgument);
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = ("DELETE FROM Employee where EmpID = '" +EmpID+ "';");
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();
                con.Close();

                AddEmp.Visible = false;
                ViewEmp.Visible = true;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"Delete Successfull !\", \"success\");\r\n", true);
                EmpView.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void newDocbtn_Click(object sender, EventArgs e)
        {
            AddEmp.Visible = true;
            btnSave.Visible = true;
            ViewEmp.Visible =false;
            btnUpdate.Visible = false;
        }

    
        protected void Emplistbtn_Click(object sender, EventArgs e)
        {
            AddEmp.Visible = false;
            ViewEmp.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string query = "UPDATE Employee SET Name = @Name , Age = @Age , gender = @gender , FatherName = @FatherName , Address = @Address , Contact =@Contact , Email = @Email , DOB = @DOB , City = @City , DOJ = @DOJ , Salary = @Salary , username= @username , password = @password , role = @role , AccNo = @AccNo , IFSC = @IFSC , AccHDName = @AccHDName , BankName = @BankName WHERE EmpID = '"+txtEmpID.Text.Trim()+"'";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtname.Text.Trim());
                        cmd.Parameters.AddWithValue("@Age", txt_age.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", ddlGender.Text.Trim());
                        cmd.Parameters.AddWithValue("@FatherName", txtG_name.Text.Trim());
                        cmd.Parameters.AddWithValue("@Address", txtaddrss.Text.Trim());
                        cmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text.Trim());
                        cmd.Parameters.AddWithValue("@City", txtcity.Text.Trim());
                        cmd.Parameters.AddWithValue("@DOJ", txtdoj.Text.Trim());
                        cmd.Parameters.AddWithValue("@Salary", txtSalary.Text.Trim());
                        cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@role", ddlRole.Text.Trim());
                        cmd.Parameters.AddWithValue("@AccNo", txtaccno.Text.Trim());
                        cmd.Parameters.AddWithValue("@IFSC", txtIFSC.Text.Trim());
                        cmd.Parameters.AddWithValue("@AccHDName", txtAccHolder.Text.Trim());
                        cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());


                        cmd.ExecuteNonQuery();
                        con.Close();
                        AddEmp.Visible = false;
                        ViewEmp.Visible = true;
                        EmpView.DataBind();
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal(\"Success !\", \"update Successfull !\", \"success\");", true);
                        txtname.Text = "";
                        txt_age.Text = "";
                        ddlGender.Text = "";
                        txtG_name.Text = "";
                        txtaddrss.Text = "";
                        txtContact.Text = "";
                        txtemail.Text = "";
                        txtDOB.Text = "";
                        txtcity.Text = "";
                        txtdoj.Text = "";
                        txtSalary.Text = "";
                        txtUserName.Text = "";
                        txtPassword.Text = "";
                        ddlRole.Text = "";
                        txtaccno.Text = "";
                        txtIFSC.Text = "";
                        txtAccHolder.Text = "";
                        txtBankName.Text = "";


                    }
                }
                



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}