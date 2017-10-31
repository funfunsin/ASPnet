using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _07practice2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //for(int i=1;i<=10000;i++)
        //{
        //    for (int j = 1; j <= i; j++)
        //    {
        //        Response.Write("*");
        //    }
        //    Response.Write("<br>");
        //}

        //string a = "";
        //for (int i = 1; i <= 100; i++)
        //{
        //    a += "*"; //a=a+"*"

        //    Response.Write(a);

        //    Response.Write("<br>");
        //}

        ////////////////////////////////////////////


        //for (int i = 1; i <= 100; i++)
        //{
        //    if(i%5!=0)
        //        Response.Write(i+",");
        //}
        ///////////////////////////////////////////


        //int sum = 0;
        //for (int i = 1; i <= 1000; i++)
        //{
        //    if (i % 3 != 0)
        //    {
        //        Response.Write(i);

        //        if(i<1000)
        //            Response.Write("+");
        //        else
        //            Response.Write("=");
        //        sum += i;
        //    }
                
        //}
        //Response.Write(sum);

        //////////////////////////////////////////////

        //for(int i=1;i<=9;i++)
        //{
        //    for (int j = 1; j <= 9; j++)
        //    {
        //        Response.Write(i+" * "+j + " = "+ i*j+"　　");
        //    }
        //    Response.Write("<br>");
        //}
        //Response.Write("<br>");
       

        //Response.Write("<br>");
        ///////////////////////////////////////////
        //for (int i = 1; i <= 9; i++)
        //{
        //    Response.Write("3* ");
        //}

        //Response.Write("<br>");
        //for (int j = 1; j <= 9; j++)
        //{
        //    Response.Write(j+"　");
        //}


        int a = 566544, b = 2147483647;
        a = a ^ b;
        b = a ^ b;
        a = a ^ b;


        Response.Write(a+","+b);


    }
}