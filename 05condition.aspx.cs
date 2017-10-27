using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05condition : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int age = 5;
        if (age < 0 || age > 200)
            Response.Write("您輸入的年齡有誤!!請檢查資料正確性~");
        else
        {
            //if (age >= 12)
            //{
            //    Response.Write("你需要買票!!");
            //}
            //else
            //{
            //    Response.Write("你不需要買票!!");
            //}
            int f = 0;


            if (age / 6 == 0)
                f = 1;
            else if (age / 13 == 0)
                f = 2;
            else if (age / 19 == 0)
                f = 3;


            switch (f)
            {
                case 1:
                    Response.Write("你不需要買票");
                    break;
                case 2:
                    Response.Write("您要購買兒童票");
                    break;
                case 3:
                    Response.Write("您要購買學生票");
                    break;
                default:
                    Response.Write("您要購買全票");
                    break;
            }

        }
    }
}