using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _15DropDownList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //只有第一次載入時才執行
        if (!IsPostBack)
        {
            string[] arrRainbowColor = { "red", "orange", "yellow", "green", "blue", "indigo", "violet" };
            DropDownList2.DataSource = arrRainbowColor;
            DataBind();

            ListItem item = new ListItem("請選擇顏色");
            DropDownList2.Items.Insert(0, item);  //若用add會加在陣列最後方,因此用insert
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = "您選擇的顏色是" + DropDownList2.SelectedItem.Text;
        Label2.ForeColor = System.Drawing.Color.FromName(DropDownList2.SelectedItem.Text);
        DropDownList2.BackColor = System.Drawing.Color.FromName(DropDownList2.SelectedItem.Text);
        DropDownList2.ForeColor = System.Drawing.Color.White;
    }
}