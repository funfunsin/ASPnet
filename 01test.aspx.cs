using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _01test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Hello World");

        for (int i = 0; i < 10; i++)
        {
            Button btn = new Button();
            btn.Text = "按按按!!!";
            form1.Controls.Add(btn);
        }
    }
}