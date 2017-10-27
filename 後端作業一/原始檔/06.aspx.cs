using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int a = 1; a <= 5; a++)
        {
            for (int b = 1; b <= a; b++)
            {
                Response.Write("*");
            }
            Response.Write("<br />");
        }
    }
}