using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _38DataBindingExpression : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] arrRainbowColor = { "red", "orange", "yellow", "green", "blue", "indigo", "violet" };
            DropDownList2.DataSource = arrRainbowColor;
            DropDownList2.SelectedIndex = 0;
        }
        DataBind();
    }

    protected string PassOrNot(string strCourse)
    {


        int score=Convert.ToInt16(Eval(strCourse));
        
        if (score < 60)
            return ("<span style='color:red'>" + score + "</span>");
        else
            return score.ToString();
    }
}