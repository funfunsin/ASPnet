using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _33DataInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();

        //資料回傳資料庫後,清空欄位
        txtAddress.Text = "";
        txtChinese.Text = "";
        txtClass.Text = "";
        txtEnglish.Text = "";
        txtMath.Text = "";
        txtName.Text = "";
        txtStudentNo.Text = "";
    }
}