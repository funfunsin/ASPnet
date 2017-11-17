using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hw6 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
            Response.Redirect("69ContentPage.aspx");
        else
        {
            lblWelcome.Text = Session["name"].ToString() + " 您好!!歡迎登入管理介面!!";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Session["name"] = null;
        Response.Redirect("69ContentPage.aspx");
    }
}

