using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int a = 12;
        int b = 18;
        int j = 0;
        for (int i = 1; i <= a || i <= b; i++)
        {
            if (a % i == 0 && b % i == 0)
            {
                j = i;
            }
        }
        Response.Write(a + "與" + b + "之最大公因數為" + j);

    }
}