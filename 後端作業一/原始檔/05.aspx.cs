using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sum = 0;
        for (int a = 1; a <= 1000; a++)
        {
            if (a % 3 != 0)
            {
                sum += a;                
            }            
        }
        Response.Write(sum);
    }
}