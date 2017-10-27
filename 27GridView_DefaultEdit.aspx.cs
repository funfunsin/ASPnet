using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _27GridView_DefaultEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //GridViewRowEventArgs e 可以傳回事件
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //TableHeaderRow的索引值是-1 因此若沒有將-1排除 再載入時會出錯
        if (e.Row.RowIndex == GridView1.EditIndex && e.Row.RowIndex != -1)
        {
            //((TextBox)e.Row.Cells[0].Controls[0]).Width = 40;
            //因為當執行編輯時Cells[0]不是textbox

            ((TextBox)e.Row.Cells[1].Controls[0]).Width = 50;

            //((TextBox)e.Row.Cells[2].Controls[0]).Width = 50;
            //datakeynames不被更改,所以也不是textbox

            ((TextBox)e.Row.Cells[3].Controls[0]).Width = 150;
            ((TextBox)e.Row.Cells[4].Controls[0]).Width = 20;
            ((TextBox)e.Row.Cells[5].Controls[0]).Width = 20;
            ((TextBox)e.Row.Cells[6].Controls[0]).Width = 20;
            ((TextBox)e.Row.Cells[7].Controls[0]).Width = 60;
        }

        if (e.Row.RowIndex != -1)
        {
            if (((LinkButton)e.Row.Cells[0].Controls[2]).CommandName == "Delete")  //判斷是刪除或是取消(因他們的索引值皆為Controls[2])
                ((LinkButton)e.Row.Cells[0].Controls[2]).Attributes["onclick"] = "return confirm('您確定要刪除【" + e.Row.Cells[1].Text + "】的資料嗎?')";
        }



    }
}