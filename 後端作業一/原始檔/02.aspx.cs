﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        float c = 30f;
        Response.Write("攝氏" + c + "度=華氏" + (c * 9 / 5 + 32) + "度");
    }
}