using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _12TextBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 50; i++)
        {
            TextBox mytb = new TextBox();
            mytb.Text = "這是在C#的第" + (i + 1) + "個TextBox!";
            mytb.Width = 200;
            mytb.ID = "MyTB" + (i + 1);
            form1.Controls.Add(mytb);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox2.Text;
        Button1.BackColor = TextBox2.BackColor;
    }
}