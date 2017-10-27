using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int a = 1; a<= 100; a++)
        {
            if (a % 5 != 0)
            {
                Response.Write(a+" ");
            }
        }
    }
}