using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _14RadioButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = txtName.Text;
        if (rdbGenderMale.Checked)
            Label1.Text += "先生";
        else
            Label1.Text += "小姐";

        Label1.Text += "您好";
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = "您的學歷為:"+ RadioButtonList1.SelectedItem.Text;
    }
}