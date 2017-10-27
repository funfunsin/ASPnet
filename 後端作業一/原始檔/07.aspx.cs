using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _07 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int j = 2; j < 10; j++)
        {
            for (int i = 1; i < 10; i++)
            {
                Response.Write(j+"*"+i+"="+(j*i)+ "<br />");
            }
        }
    }
}