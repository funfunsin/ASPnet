using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06loop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        for(int i=1;i<=10;i++)
        {
            Response.Write(i+" ");

        }

        //宣告一個長度N的陣列,其索引值範圍為0~N-1
        string[] arrRainbow = { "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet", "red", "oragne", "yellow", "green", "blue", "indigo", "violet" };


        for(int i=0;i<arrRainbow.Length;i++)
        {
            Response.Write(arrRainbow[i]+"," );
        }
        Response.Write("<hr>");
        //////////////
        int sum = 0;

        for(int i=0;i<=100;i++)
        {
            sum += i;
        }

        Response.Write(sum);
        ////////////////////////////
        Response.Write("<hr>");
        foreach (string r in arrRainbow)
        {
            Response.Write(r + ",");
        }

        ///////////////////////////

        Response.Write("<hr>");

        string[] arrRainbowText = { "紅", "橙", "黃", "綠", "藍", "靛", "紫" };
        string[] arrRainbowColor = { "red", "orange", "yellow", "green", "blue", "indigo", "violet" };
        for (int i = 0; i < arrRainbowText.Length; i++)
        {
            Response.Write("<span style='color:"+arrRainbowColor[i]+"'>"+arrRainbowText[i] + "</span> ");
        }

        //////////////////////////////
        Response.Write("<hr>");
        int a = 5;

        while(a<=10)
        {
            Response.Write("a的值小於等於10");
            a++;
        }
        Response.Write("<hr>");
        a = 5;
        do
        {
            Response.Write("a的值小於等於10");
            a++;
        } while (a <= 10);
        Response.Write("<hr>");

        int j = 0;
        while ( j < arrRainbowText.Length)
        {
            Response.Write("<span style='color:" + arrRainbowColor[j] + "'>" + arrRainbowText[j] + "</span> ");
            j++;
        }
    }
}