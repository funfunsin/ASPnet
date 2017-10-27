using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _42FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string subfilename = "";
        try
        {
            // 1.將圖片上傳至server,並存入圖片所在路徑至資料庫

            //subfilename=fulImg.FileName.Substring(fulImg.FileName.IndexOf(".") + 1, 3);

            //if(subfilename=="jpg"||subfilename=="png")
            //{
            //    //fulImg.SaveAs("/ProductsImg/" + fulImg.FileName);
            //    fulImg.SaveAs(Server.MapPath("/ProductsImg/"+txtID.Text+"."+subfilename));

            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString1"].ConnectionString);
            //    SqlCommand objCmd = new SqlCommand("insert into Products values('"+txtID.Text+"', '"+txtName.Text+ "', '/ProductsImg/" + txtID.Text + "." + subfilename+"')", conn);

            //    conn.Open();
            //    objCmd.ExecuteNonQuery();
            //    conn.Close();

            //}
            //else
            //{
            //    Label1.Text = "請檢查圖片檔案正確性!";
            //}

            //2. 直接將上傳的圖片存放於資料庫中
            subfilename = fulImg.FileName.Substring(fulImg.FileName.IndexOf(".") + 1, 3);
            if (subfilename == "jpg" || subfilename == "png")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString1"].ConnectionString);
                SqlCommand objCmd = new SqlCommand("insert into Products2 values('" + txtID.Text + "', '" + txtName.Text + "', @Img)", conn);

                objCmd.Parameters.AddWithValue("@Img", fulImg.FileBytes);

                conn.Open();
                objCmd.ExecuteNonQuery();
                conn.Close();

            }
            else
            {
                Label1.Text = "請檢查圖片檔案正確性!";
            }


        }
        catch (Exception ex)
        {
            Response.Write("上傳檔案沒有成功!!" + ex.Message);
        }


    }
}