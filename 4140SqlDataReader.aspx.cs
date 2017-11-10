using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4140SqlDataReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);

        //手動建立SQL命令
        SqlCommand objCmd = new SqlCommand("select * from StudentScores",conn);
    
        //一次只讀取一筆資料,讀完就釋放 I/O會比較重
        SqlDataReader rd;
        conn.Open();  //記得有Open就要有Close 才不會佔住記憶體

        rd =objCmd.ExecuteReader(); //用SqlDataReader rd來接收回傳的結果  //ExecuteReader會將"select * from StudentScores"丟回資料庫執行

        //當搜尋的資料為key時,撈單筆資料用if
        //撈多筆資料時用while
        while (rd.Read())
        {
            Response.Write("學號:"+rd["StudentNo"]+", 姓名:"+rd["Name"]+"<br>");
        }


        conn.Close();

    }
}