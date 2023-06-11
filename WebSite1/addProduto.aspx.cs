using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnEnviar_Click(object sender, EventArgs e)
	{
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecomdb"].ConnectionString))
            {
                con.Open();

            SqlCommand cmd = new SqlCommand("insert into tblProducts (PName,PCategoryID,PDescription,PPrice) values('" + txtNomeP.Text + "','" + ddlCategoria.SelectedItem.Value + "','" + txtDescricao.Text + "','" + txtPreco.Text +"')", con);
                cmd.ExecuteNonQuery();
            
            con.Close();
           
            if (con.State == ConnectionState.Closed) { con.Open(); }

            SqlCommand getPID = new SqlCommand("(Select PID from tblProducts where PName = '" + txtNomeP.Text + "')", con);
            Int64 PID = Convert.ToInt64(getPID.ExecuteScalar());

            //Insert and upload images
            if (prodImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/img/produtos/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(prodImg01.PostedFile.FileName);
                prodImg01.SaveAs(SavePath + "\\" + txtNomeP.Text.ToString().Trim() + "01" + Extention);

                
                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd3.Parameters.AddWithValue("@Name", txtNomeP.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extention", Extention);
                cmd3.ExecuteNonQuery();
            }
            //2nd fileupload
            if (prodImg02.HasFile)
            {
                string SavePath = Server.MapPath("~/img/produtos/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(prodImg02.PostedFile.FileName);
                prodImg02.SaveAs(SavePath + "\\" + txtNomeP.Text.ToString().Trim() + "02" + Extention);

                SqlCommand cmd4 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd4.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd4.Parameters.AddWithValue("@Name", txtNomeP.Text.ToString().Trim() + "02");
                cmd4.Parameters.AddWithValue("@Extention", Extention);
                cmd4.ExecuteNonQuery();
            }

            //3rd file upload 
            if (prodImg03.HasFile)
            {
                string SavePath = Server.MapPath("~/img/produtos/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(prodImg03.PostedFile.FileName);
                prodImg03.SaveAs(SavePath + "\\" + txtNomeP.Text.ToString().Trim() + "03" + Extention);

                SqlCommand cmd5 = new SqlCommand("insert into tblProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd5.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd5.Parameters.AddWithValue("@Name", txtNomeP.Text.ToString().Trim() + "03");
                cmd5.Parameters.AddWithValue("@Extention", Extention);
                cmd5.ExecuteNonQuery();
            }
            con.Close();
            Response.Redirect("addProduto.aspx");


        }
    }

}