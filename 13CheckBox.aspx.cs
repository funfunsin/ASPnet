using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _13CheckBox : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblResult.Text = "";
        if (ckbIntres1.Checked)
            lblResult.Text += ckbIntres1.Text + " ";
        if (ckbIntres2.Checked)
            lblResult.Text += ckbIntres2.Text + " ";
        if (ckbIntres3.Checked)
            lblResult.Text += ckbIntres3.Text + " ";
        if (ckbIntres4.Checked)
            lblResult.Text += ckbIntres4.Text + " ";
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        lblResult.Text = "";
        if (CheckBox1.Checked)
            lblResult.Text += CheckBox1.Text + " ";
        if (CheckBox2.Checked)
            lblResult.Text += CheckBox2.Text + " ";
        if (CheckBox3.Checked)
            lblResult.Text += CheckBox3.Text + " ";
        if (CheckBox4.Checked)
            lblResult.Text += CheckBox4.Text + " ";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Label3.Text = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Label3.Text += CheckBoxList1.Items[i].Text + " ";
            }
        }
    }

    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = "";
        for (int i = 0; i < CheckBoxList2.Items.Count; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
            {
                Label3.Text += CheckBoxList2.Items[i].Text + " ";
            }
        }
    }
}