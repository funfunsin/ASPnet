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
        int s = 99;
        switch (s / 10)
        {
            case 10:
            case 9:
                Response.Write(s + "分為優等!");
                break;
            case 8:
                Response.Write(s + "分為甲等!");
                break;
            case 7:
                Response.Write(s + "分為乙等!");
                break;
            case 6:
                Response.Write(s + "分為丙等!");
                break;
            default:
                Response.Write(s + "分為丁等!");
                break;
        }
    }
}