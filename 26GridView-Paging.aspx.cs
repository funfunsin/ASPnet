using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //OnDataBound="GridView2_DataBound"資料表載入後才執行
    protected void GridView2_DataBound(object sender, EventArgs e)
    {
        //Label mylbl = new Label();
        //((Label)GridView2.BottomPagerRow.Cells[0].FindControl("lblPageInfo")).Text = "Page " + (GridView2.PageIndex + 1) + " of " + GridView2.PageCount;

        GridViewRow gvr = GridView2.BottomPagerRow;
        Label PagerInfo = (Label)gvr.Cells[0].FindControl("lblPageInfo");
        PagerInfo.Text = "Page " + (GridView2.PageIndex + 1) + " of " + GridView2.PageCount;

        DropDownList ddlPager = (DropDownList)gvr.Cells[0].FindControl("ddlPager");

        ListItem item;
        for (int i = 0; i < GridView2.PageCount; i++)
        {
            item = new ListItem((i + 1).ToString());
            if (GridView2.PageIndex == i)
                item.Selected = true;
            ddlPager.Items.Add(item);
        }
    }


    //傳進來的參數是sender,可知道觸發函數的物件是誰
    protected void lkbPrev_Click(object sender, EventArgs e)
    {
        switch (((LinkButton)sender).ID)
        {
            case "lkbPrev":
                if (GridView2.PageIndex > 0)
                    GridView2.PageIndex --;
                break;

            case "lkbNext":
                GridView2.PageIndex ++;
                break;
        }
    }

    protected void ddlPager_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gvr = GridView2.BottomPagerRow;
        DropDownList ddlPager = (DropDownList)gvr.Cells[0].FindControl("ddlPager");

        GridView2.PageIndex = ddlPager.SelectedIndex;
    }
}