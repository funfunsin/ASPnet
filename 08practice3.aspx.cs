using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _08practice3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //質數判斷
        int a = 189587;
        int i = 0;

        for (i = 2; i < a; i++)
        {
            if (a % i == 0)
            {
                Response.Write(a + "不是質數!!");
                break;
            }
        }
        if (a == i)
            Response.Write(a + "是質數!!");


        Response.Write("<hr />");


        //求最大公因數
        int x = 1782, y = 14456, z = 0; ;
        int x1 = x, y1 = y;

        while (x1 % y1 != 0)
        {
            z = x1 % y1;
            x1 = y1;
            y1 = z;
        }

        Response.Write(x + "與" + y + "的最大公因數為" + y1);


        Response.Write("<hr />");
        //迴文判斷

        int n = 12321;
        int r = 0, q = 0, n1 = n;
        string strResult = "";


        for (int j = 1; j <= 9; i++)
        {
            r = n1 % 10;  //取尾數
            q = n1 / 10;  //保留尾數以外的數值
            strResult += r;

            if (q == 0)
                break;
            else
                n1 = q;  //把商數變成被除數

        }
        //if (n == Convert.ToInt32(strResult) )

        if (n.ToString() == strResult)
            Response.Write(a + "是迴文!!");
        else
            Response.Write(a + "不是迴文!!");

    }
}