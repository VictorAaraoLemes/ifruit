using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;
using System.Drawing;
using System.Threading;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            BindProductCart();
            BindTotalCart();
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }


    private void BindProductCart()
    {
        String UserID = Session["USERID"].ToString();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("procShowCart", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@UserID", UserID);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptProdutoCar.DataSource = dt;
                    rptProdutoCar.DataBind();
                    Session["CartID"] = dt.Rows[0]["CartID"].ToString();
            }               
            }
    }
    private void BindTotalCart()
    {
        String UserID = Session["USERID"].ToString();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select UID, Sum(PPrice) as TotalPrice from tblCart where UID = @UserID group by UID", con);
            cmd.Parameters.AddWithValue("@UserID", UserID);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptTotal.DataSource = dt;
            rptTotal.DataBind();
            con.Close();
        }
    }

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        int CartPID = Convert.ToInt32(Session["CartID"].ToString().Trim());
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
        {
            SqlCommand myCmd = new SqlCommand("procDeleteCartItem", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            myCmd.Parameters.AddWithValue("@CartID", CartPID);
            con.Open();
            myCmd.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect("produto.aspx");
    }


    protected void btnComprar_Click(object sender, EventArgs e)
    {
        String UserID = Session["USERID"].ToString();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
            {
            con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblOrderProducts(UserID, CartAmount, PID, Products, Quantity, OrderDate) Values((Select Uid from tblUsers where Uid = @UserID), (Select PPrice from tblCart where UID = @UserID), (Select PID from tblCart where UID = @UserID),(Select PName from tblCart where Uid = @UserID),(select Qty from tblCart where UID = @UserID), (SELECT CONVERT(datetime, SYSDATETIME())))", con);
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.ExecuteNonQuery();
                con.Close();
            }           
        var page = HttpContext.Current.CurrentHandler as Page;
        ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Compra Realizada com Sucesso');window.location ='produto.aspx';", true);
    }
}



