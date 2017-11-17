<%@ WebHandler Language="C#" Class="_45getProductsImg" %>

using System;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

public class _45getProductsImg : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);
        SqlCommand objCmd = new SqlCommand("select * from Products2 where ProductID='"+context.Request.QueryString["id"]+"'", conn);

        SqlDataReader rd;
        conn.Open();

        rd = objCmd.ExecuteReader();

        while (rd.Read())
        {
            
            context.Response.BinaryWrite( (byte[])rd["Img"] );
            
        }


        conn.Close();





    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}