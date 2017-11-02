using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _25GridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
            Response.Redirect("69ContentPage.aspx");

        Label1.Text = Session["name"].ToString() + "歡迎光臨!!";
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex < 0)
            e.Row.Cells[0].Text = "學生姓名";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Session["name"] = null;
        Response.Redirect("69ContentPage.aspx");
    }
}