using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@nomeu and Password=@senha", con);
            cmd.Parameters.AddWithValue("@nomeu", txtNomeU.Text);
            cmd.Parameters.AddWithValue("@senha", txtSenha.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                string Utype;
                Utype = dt.Rows[0][5].ToString().Trim();
                Session["USERID"] = dt.Rows[0]["Uid"].ToString();

                if (Utype == "User")
                {
                    Session["Username"] = txtNomeU.Text;

                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                    Session["getFullName"] = dt.Rows[0]["name"].ToString();
                    Session["LoginType"] = "User";
                   if (Request.QueryString["rurl"] != null)
                    {
                        if (Request.QueryString["rurl"] == "cart")
                        {
                            Response.Redirect("Cart.aspx");
                        }

                        if (Request.QueryString["rurl"] == "PID")
                        {
                            string myPID = Session["ReturnPID"].ToString();
                            Response.Redirect("ProductView.aspx?PID=" + myPID + "");
                        }
                    }

                    else
                    {
                        Response.Redirect("UserIndex.aspx");
                    }

                }
                if (Utype == "Admin")
                {
                    Session["Username"] = txtNomeU.Text;
                    Session["LoginType"] = "Admin";
                    Response.Redirect("~/AdminIndex.aspx");
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Nome ou Senha Incorretos";
                lblError.ForeColor = System.Drawing.Color.Red;
            }
            clr();
            con.Close();
        }
    }
    private void clr()
    {
        txtSenha.Text = string.Empty;
        txtNomeU.Text = string.Empty;
        txtNomeU.Focus();

    }
}