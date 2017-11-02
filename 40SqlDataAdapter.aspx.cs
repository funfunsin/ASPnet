using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class _40SqlDataAdapter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //DataSet只在記憶體中新增修改刪除,沒有寫回資料庫//

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);

        //SqlDataAdapter
        SqlDataAdapter objDa = new SqlDataAdapter("select * from StudentScores",conn);

        DataSet ds = new DataSet();
        objDa.Fill(ds, "StudentScores");

        GridView1.DataSource = ds;
        //GridView1.DataBind();

        //修改DataSet中的某一筆資料
        //標題列的index是-1 無法修改
        //第一列是Rows[0]
        ds.Tables["StudentScores"].Rows[0]["Name"] = "老不修";
        ds.Tables["StudentScores"].Rows[0]["Mathematics"] = "45";

 


        //在DataSet中新增資料
        //DataRow dr = new DataRow(,);  //建立一個空的列
        DataRow dr = ds.Tables["StudentScores"].NewRow();  //Tables["StudentScores"]呼叫新增列 指給dr

        //要先把資料放入再add回table
        dr[0] = "柯南";
        dr[1] = "999999";
        dr[2] = "aaaaaaaaaaaaaaaaaaaaa";
        dr[3] = "80";
        dr[4] = "90";
        dr[5] = "60";
        dr[6] = "二年乙班";

        //在table的row增加物件
        ds.Tables["StudentScores"].Rows.Add(dr);

        //在DataSet中刪除資料
        ds.Tables["StudentScores"].Rows[3].Delete();


        //寫回資料庫內的資料表
        SqlCommandBuilder myupdate = new SqlCommandBuilder(objDa);
        objDa.Update(ds, "StudentScores");

        GridView1.DataBind();

    }
}