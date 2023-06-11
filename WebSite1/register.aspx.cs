using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name,Usertype) Values('" + txtNomeU.Text + "','" + txtSenha.Text + "','" + txtEmail.Text + "','" + txtNome.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                lblMsg.Visible = true;
                lblMsg.Text = "Usuario Registrado com Sucesso";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            Response.Redirect("./login.aspx");
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Preencha todos os campos";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
    private bool isformvalid()
    {
        if (txtNomeU.Text == "")
        {
            Response.Write("<script> alert('Usuario invalido');  </script>");
            txtNomeU.Focus();

            return false;
        }
        else if (txtSenha.Text == "")
        {
            Response.Write("<script> alert('Senha invalida');  </script>");
            txtSenha.Focus();
            return false;
        }
        else if (txtSenha.Text != txtCSenha.Text)
        {
            Response.Write("<script> alert('Senhas não correspondem');  </script>");
            txtNomeU.Focus();
            return false;
        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('Email invalido');  </script>");
            txtEmail.Focus();
            return false;
        }
        else if (txtNome.Text == "")
        {
            Response.Write("<script> alert('Nome invalido');  </script>");
            txtNome.Focus();
            return false;
        }

        return true;
    }
    private void clr()
    {
        txtNome.Text = string.Empty;
        txtSenha.Text = string.Empty;
        txtNomeU.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtCSenha.Text = string.Empty;
    }
}