using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02Var : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string text = "hello world!";  
        Response.Write(text);


        ////

        string a = "ASP.net";
        int b = 123;   //32位元整數
        long c = 123;  //64位元整數
        byte d = 123;  //8位元整數

        float g = 123.123f;   //單精準度浮點數  //f給值時後面要+f
        double f = 123.123;   //雙精準度浮點數


        ///


    }
}