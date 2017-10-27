using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int n = 12321;
        int nn = n;
        int r = 0, q = 0;
        string strResult = "";

        for (int i = 1; i <= 9; i++)
        {
            r = nn % 10;  //取尾數
            q = nn / 10;  //保留尾數以外的值
            strResult += r;

            if (q == 0)
                break;
            else
                nn = q;  //把商數變成被除數
        }

        if (n == Convert.ToInt32(strResult))
            Response.Write(n + "是迴文!");
        else
            Response.Write(n + "不是迴文!");

    }
}