using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _70hw61115 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        txtProduct_ID.Text = getProID();

        /*取得一個新的商品編號的函式(T-SQL)
         create function fnGetProductID()
	            returns char(4)
            as
            begin
	            declare @pro_id char(4)
	            select top 1 @pro_id=Product_ID from Products order by Product_ID desc

	            set @pro_id= cast(substring(@pro_id,2,3) as int)+1
	            if len(@pro_id)=2
		            return 'P0'+@pro_id

	            return 'P'+@pro_id
            end
            */
    }
    protected string getProID()
    {
        string ProID = "";
        SqlCommand cmd = new SqlCommand("select [dbo].[fnGetProductID]()", conn);

        SqlDataReader rd;
        conn.Open();
        rd = cmd.ExecuteReader();
        rd.Read();
        ProID = rd[0].ToString();
        conn.Close();

        return ProID;

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {

            FileUpload fulImg = (FileUpload)GridView1.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("fulImg");
            FileUpload fulSimg = (FileUpload)GridView1.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("fulSimg");

            int imgIndex = fulImg.FileName.IndexOf(".");
            int SimgIndex = fulSimg.FileName.IndexOf(".");

            if (imgIndex != -1 && SimgIndex != -1)
            {
                string imgSubname = fulImg.FileName.Substring(imgIndex + 1, 3);  //抓大圖副檔名
                string SimgSubname = fulSimg.FileName.Substring(SimgIndex + 1, 3);  //抓小圖副檔名

                if (imgSubname == "jpg" && SimgSubname == "jpg")
                {
                    try
                    {
                        fulImg.SaveAs(Server.MapPath("~/ProductsImg/" + GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text + ".jpg"));
                        fulSimg.SaveAs(Server.MapPath("~/ProductsImg/s" + GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text + ".jpg"));
                    }
                    catch (Exception ex)
                    {
                        Response.Write("上傳沒有成功!原因是:" + ex.Message);
                    }
                }
            }
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            fulImg.SaveAs(Server.MapPath("~/ProductsImg/" + txtProduct_ID.Text + ".jpg"));
            fulSimg.SaveAs(Server.MapPath("~/ProductsImg/s" + txtProduct_ID.Text + ".jpg"));

            SqlCommand comm = new SqlCommand("insert into Products values(@Product_ID, @Product_Name,@Img,@Product_Price,@Product_Price2,@Product_Intro,1)", conn);

            comm.Parameters.AddWithValue("@Product_ID", txtProduct_ID.Text);
            comm.Parameters.AddWithValue("@Product_Name", txtProduct_Name.Text);
            comm.Parameters.AddWithValue("@Img", txtProduct_ID.Text);
            comm.Parameters.AddWithValue("@Product_Price", txtProduct_Price.Text);
            comm.Parameters.AddWithValue("@Product_Price2", txtProduct_Price2.Text);
            comm.Parameters.AddWithValue("@Product_Intro", txtProduct_Intro.Text);

            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            GridView1.DataBind();
            txtProduct_Intro.Text = "";
            txtProduct_Name.Text = "";
            txtProduct_Price.Text = "";
            txtProduct_Price2.Text = "";
            txtProduct_ID.Text = getProID();

        }
        catch (Exception ex)
        {
            Response.Write("上傳沒有成功!原因是:" + ex.Message);
        }
    }
}