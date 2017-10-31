using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04practice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //四則運算
        int a = 42;
        float b = 2.5f;

        Response.Write(a+"+"+b+"="+(a+b)+"<br />");
        Response.Write(a+"-"+b+"="+ (a - b) + "<br />");
        Response.Write(a + "*" + b + "=" + a * b + "<br />");
        Response.Write(a + "/" + b + "=" + a / b + "<br />");
        Response.Write(a + "%" + b + "=" + a % b + "<br />");

        //溫度轉換
        float C = 32.5f;
        Response.Write("攝氏"+C+"度等於華氏"+(C*9/5+32)+"度" );

    }
}