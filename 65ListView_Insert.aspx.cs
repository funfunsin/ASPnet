using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _65ListView_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if(e.CommandName=="Back")
            ListView2.SelectedIndex = -1;
    }
}