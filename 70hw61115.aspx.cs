using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _70hw61115 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
}