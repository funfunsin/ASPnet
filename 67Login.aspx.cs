using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _67Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from userdata where id=@id and pwd=@pwd", conn);
        //SqlCommand cmd = new SqlCommand("select * from userdata where id='"+ txtAccount.Text + "' and pwd='"+ txtPwd.Text+"'", conn);
        cmd.Parameters.AddWithValue("@id", txtAccount.Text);
        cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
        //Response.Write(cmd.CommandText);
        SqlDataReader dr;

        conn.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //ViewState["aa"] = 1;  生命週期是在該網頁,換頁就會不見了
            Session["id"] = dr["id"].ToString();   //生命週期是在該網站,把瀏覽器關了才會不見(才能知道該帳號是否有登入)
            Session["name"] = dr["name"].ToString();
            Response.Redirect("25GridView.aspx"); //登入成功後進入的頁面!
        }
        else
        {
            lblInfo.Text = "您的帳號或密碼有誤!!";
        }

        conn.Close();

    }
}