using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _34GridView_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            if (((LinkButton)e.Row.Cells[0].Controls[2]).CommandName == "Delete")
                ((LinkButton)e.Row.Cells[0].Controls[2]).Attributes["onclick"] = "return confirm('您確定要刪除【" + e.Row.Cells[1].Text + "】這筆資料嗎?')";
        }

    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //int index = GridView2.Rows[0].Cells.Count - 1;
        int index = e.Row.Cells.Count - 1;
        if (e.Row.RowIndex != -1)
        {
            if (((Button)e.Row.Cells[index].Controls[2]).CommandName == "Delete")
                ((Button)e.Row.Cells[index].Controls[2]).Attributes["onclick"] = "if(!confirm('您確定要刪除【" + e.Row.Cells[0].Text + "】這筆資料嗎?')) return;";
        }
    }
}