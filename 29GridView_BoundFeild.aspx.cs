using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _29GridView_BoundFeild : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void ShowOrderList(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);  //e.CommandArgument抓事件發生那一列的索引值

        //因為該列被點選並執行OnRowCommand後,並無法判斷是哪一個CommandName下的指令
        //若同時有兩個以上的按鈕,則要以CommandName來進行判斷
        if (e.CommandName == "Order")
        {

            string no = GridView1.Rows[index].Cells[0].Text;
            string name = GridView1.Rows[index].Cells[1].Text;

            lblCar.Text += no + " " + name + "已加入購物車<br>";
        }
        if (e.CommandName == "Avg")
        {
            int avgScore = (Convert.ToInt16(GridView1.Rows[index].Cells[2].Text) +
                 Convert.ToInt16(GridView1.Rows[index].Cells[3].Text) + Convert.ToInt16(GridView1.Rows[index].Cells[4].Text)) / 3;
            lblCar.Text = avgScore.ToString();

        }
        //lblCar.Text += GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text + " " + GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text + "已加入購物車<br>";
    }
}

