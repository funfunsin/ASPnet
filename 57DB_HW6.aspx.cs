using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _57DB_HW6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtID_TextChanged(object sender, EventArgs e)
    {
        //強制先完成RegularExpression驗證
        RegularExpressionValidator1.Validate();

        //判斷IsValid的值
        if (RegularExpressionValidator1.IsValid)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["教務系統ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select dbo.fnCheckCourseID('" + txtID.Text + "')", conn);

            SqlDataReader dr;
            conn.Open();
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr[0].ToString() == "1")
            {
                Label1.Text = "編號可用";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "編號重複";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();

        }
        else
            Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
    }
}