using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _11Button : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)  //Page_Load網頁載入時就執行
    {
        //會以C#設定的屬性為主,所以text會顯示"按按按我!" 而不是"Button"
        Button1.Text = "按按按我!";
    }

    protected void Button2_Click(object sender, EventArgs e)  //Button2_Click觸發事件時才執行
    {
        Button2.Text = "按鈕被按了!!";
        Button2.Height = 150;  //150個單位unit
        Button2.Width = Unit.Pixel(150); //設定單位為pixel
        Button2.ForeColor = System.Drawing.Color.Red;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        //弄一副牌出來
        string[] poker = new string[52]; //索引值0~51
        for (int i = 1; i <= poker.Length; i++)
        {
            poker[i - 1] = i.ToString();
        }



        //洗牌
        Random r = new Random();
        int t = 0;
        string tmp = "";
        for (int i = 0; i < poker.Length; i++)
        {
            t = r.Next(0, 52);
            tmp = poker[i];
            poker[i] = poker[t];
            poker[t] = tmp;
        }


        //發牌
        string p1 = "", p2 = "", p3 = "", p4 = "";
        for (int i = 0; i < poker.Length; i++)
        {
            switch (i % 4)
            {
                case 0:
                    p1 += "<img src='後端作業三/原始檔/poker_img/" + poker[i] + ".gif' />";
                    break;
                case 1:
                    p2 += "<img src='後端作業三/原始檔/poker_img/" + poker[i] + ".gif' />";
                    break;
                case 2:
                    p3 += "<img src='後端作業三/原始檔/poker_img/" + poker[i] + ".gif' />";
                    break;
                case 3:
                    p4 += "<img src='後端作業三/原始檔/poker_img/" + poker[i] + ".gif' />";
                    break;
            }
        }

        //顯示
        Response.Write("玩家1:" + p1 + "<br>玩家2:" + p2 + "<br>玩家3:" + p3 + "<br>玩家4:" + p4);


    }
}