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
        int a = 13;
        int b = 0;
        for ( b = 2; b < a ; b++)
        {
            if (a % b == 0)
            {
                Response.Write(a + "不是質數!");
                break;
            }
        }
        if (a == b)
        {
            Response.Write(a + "是質數!");
        }
        

    }
}