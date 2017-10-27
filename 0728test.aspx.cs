using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _0728test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int a = 42;
        float b = 2.5f;


        //int與float直接計算 不同型態會做隱式轉換
        Response.Write(a + b + "<br/>");
        Response.Write(a - b + "<br/>");
        Response.Write(a * b + "<br/>");
        Response.Write(a / b + "<br/>");
        Response.Write(a % b + "<br/>");


        //若以下方寫法,記得先將計算部分()先計算,否則隱式轉換時換變成字串與變數做計算,會出錯!
        Response.Write(a + "+" + b + "=" + (a + b) + "<br/>");
        Response.Write(a + "-" + b + "=" + (a - b) + "<br/>");
        Response.Write(a + "*" + b + "=" + (a * b) + "<br/>");
        Response.Write(a + "/" + b + "=" + (a / b) + "<br/>");
        Response.Write(a + "%" + b + "=" + (a % b) + "<br/>");


        //記得運算式要()先做
        float c = 32.5f;
        Response.Write("攝氏" + c + "度=華氏" + (c * 9 / 5 + 32) + "度");

    }
}