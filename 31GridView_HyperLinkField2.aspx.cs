using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _31GridView_HyperLinkField2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //截取網址用Request
        Response.Write(Request.QueryString["No"]);
        Response.Write(Request.QueryString["Name"]);
    }
}