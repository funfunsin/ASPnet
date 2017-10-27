using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int a=42;
        float b = 2.5f;

        Response.Write(a + "+" + b + "=" + (a + b) + "<br/>");
        Response.Write(a + "-" + b + "=" + (a - b) + "<br/>");
        Response.Write(a + "*" + b + "=" + (a * b) + "<br/>");
        Response.Write(a + "/" + b + "=" + (a / b) + "<br/>");
        Response.Write(a + "%" + b + "=" + (a % b) + "<br/>");
    }
}