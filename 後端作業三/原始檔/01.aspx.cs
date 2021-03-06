﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //弄一副牌出來
        string[] poker = new string[52]; //索引值0~51
        for (int i = 1; i <= poker.Length; i++)
        {
            poker[i-1] = i.ToString();
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
                    p1 += "<img src='poker_img/" + poker[i] + ".gif' />";
                    break;
                case 1:
                    p2 += "<img src='poker_img/" + poker[i] + ".gif' />";
                    break;
                case 2:
                    p3 += "<img src='poker_img/" + poker[i] + ".gif' />";
                    break;
                case 3:
                    p4 += "<img src='poker_img/" + poker[i] + ".gif' />";
                    break;
            }
        }

        //顯示
        Response.Write("玩家1:" + p1 + "<br>玩家2:" + p2 + "<br>玩家3:" + p3 + "<br>玩家4:" + p4);


    }
}