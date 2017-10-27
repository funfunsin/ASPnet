using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 後端作業四_原始檔_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //剪下貼上->複製再刪除
        for (int i = 0; i < ltbLeft.Items.Count; i++)
        {
            //ltbRight.Items.Add(ltbLeft.Items[i].Text);
            //要連item的value一起帶入,故改成下列寫法
            ltbRight.Items.Add(new ListItem(ltbLeft.Items[i].Text, ltbLeft.Items[i].Value));
            ltbLeft.Items[i].Enabled = false;
        }
        ltbLeft.Items.Clear();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ltbRight.Items.Count; i++)
        {
            //ltbLeft.Items.Add(ltbRight.Items[i].Text);
            ltbLeft.Items.Add(new ListItem(ltbRight.Items[i].Text, ltbRight.Items[i].Value));
            ltbRight.Items[i].Enabled = false;
        }
        ltbRight.Items.Clear();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ltbLeft.Items.Count; i++)
        {
            if (ltbLeft.Items[i].Selected)
            {
                ltbRight.Items.Add(new ListItem(ltbLeft.Items[i].Text, ltbLeft.Items[i].Value));
                ltbLeft.Items[i].Enabled = false;
            }
        }

        for (int i = ltbLeft.Items.Count - 1; i >= 0; i--)
        {
            if (ltbLeft.Items[i].Enabled == false)
            {
                ltbLeft.Items.RemoveAt(i);
            }

        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ltbRight.Items.Count; i++)
        {
            if (ltbRight.Items[i].Selected)
            {
                ltbLeft.Items.Add(new ListItem(ltbRight.Items[i].Text, ltbRight.Items[i].Value));
                ltbRight.Items[i].Enabled = false;
            }

        }

        for (int i = ltbRight.Items.Count - 1; i >= 0; i--)
        {
            if (ltbRight.Items[i].Enabled == false)
            {
                ltbRight.Items.RemoveAt(i);
            }

        }
    }
}

