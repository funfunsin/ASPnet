using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _17Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TableRow tr = new TableRow();
        TableCell tc1 = new TableCell();
        TableCell tc2 = new TableCell();

        tr.Cells.Add(tc1);
        tr.Cells.Add(tc2);
        Table1.Rows.Add(tr);

        tr.HorizontalAlign = HorizontalAlign.Center;
        tc1.Text = TextBox1.Text;
        tc2.Text = TextBox2.Text;

    }
}