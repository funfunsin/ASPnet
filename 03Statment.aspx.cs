using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03Statment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int a = 0;
        a = 10;
        a += 10; //a = a + 10;
        a -= 5;  //a=a-5;
        a *= 2;  //a=a*2;
        a /= 4;  //a=a/4;

    }
}