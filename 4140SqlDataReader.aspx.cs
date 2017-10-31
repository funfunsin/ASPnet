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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString1"].ConnectionString);
        SqlCommand objCmd = new SqlCommand("select * from StudentScores",conn);
    
        SqlDataReader rd;
        conn.Open();

        rd=objCmd.ExecuteReader();

        while (rd.Read())
        {
            Response.Write("學號:"+rd["StudentNo"]+", 姓名:"+rd["Name"]+"<br>");
        }


        conn.Close();

    }
}