using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _59DataList_Select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void myData_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            myData.SelectedIndex = e.Item.ItemIndex;
            DataBind();
        }
        else if (e.CommandName == "Back")
        {
            myData.SelectedIndex = -1;
            DataBind();
        }
    }
}