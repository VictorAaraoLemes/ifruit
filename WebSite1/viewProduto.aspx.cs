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
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductDetails();
                BindProductImage();
            }
        }
        else
        {
            Response.Redirect("~/produto.aspx");
        }
    }

    private void BindProductDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("procProductDetails", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@PID", PID);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptDetalhes1.DataSource = dt;
                rptDetalhes1.DataBind();
                rptDetalhes2.DataSource = dt;
                rptDetalhes2.DataBind();
                Session["CartPID"] = Convert.ToInt32(dt.Rows[0]["PID"].ToString());
                Session["myPName"] = dt.Rows[0]["PName"].ToString();
                Session["myPPrice"] = dt.Rows[0]["PPrice"].ToString();
            }

        }
    }

    private void BindProductImage()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("procProductImages", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@PID", PID);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptImagens.DataSource = dt;
                rptImagens.DataBind();
            }
        }
    }

    protected void btnAddCart_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {

            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Insert into tblCart(UID, PID, PName, PPrice, Qty) Values((select Uid from tblUsers WHERE Username = '" + Session["Username"] + "')," + PID + ", (select PName from tblProducts where PID = " + PID + "),(select PPrice from tblProducts where PID = " + PID + "),1)", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("carrinho.aspx");
        }
    }
}