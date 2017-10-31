using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _61FormView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void myData_DataBound(object sender, EventArgs e)
    {
        int page = myData.PageIndex + 1;
        int total = myData.PageCount;

        ((Label)myData.BottomPagerRow.Cells[0].FindControl("lblPageInfo")).Text = "Page "+page+" of "+ total;

       
    }
}