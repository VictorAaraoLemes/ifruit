using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            btnLogout.Visible = true;
            btnLogin.Visible = false;
            lblSuccess.Text = "Bem vindo <b>" + Session["Username"].ToString() + "</b>";

        }
        else
        {
            btnLogout.Visible = false;
            btnLogin.Visible = true;
            Response.Redirect("./login.aspx");
        }
        var page = HttpContext.Current.CurrentHandler as Page;
        ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Login Feito com Sucesso, retornando a pagina principal');window.location ='index.aspx';", true);
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("./login.aspx");
    }

    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
        }
    }
}