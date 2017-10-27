using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _60DataList_Edit : System.Web.UI.Page
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

    protected void myData_EditCommand(object source, DataListCommandEventArgs e)
    {
        myData.EditItemIndex = e.Item.ItemIndex;
        DataBind();
    }

    protected void myData_CancelCommand(object source, DataListCommandEventArgs e)
    {
        myData.EditItemIndex = -1;
        DataBind();
    }

    protected void myData_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        TextBox chinese= (TextBox)e.Item.FindControl("txtChinese");
        TextBox english = (TextBox)e.Item.FindControl("txtEnglish");
        TextBox mathematics = (TextBox)e.Item.FindControl("txtMathematics");
        Label stuNo= (Label)e.Item.FindControl("lblStuNo");

        SqlDataSource1.UpdateParameters["Chinese"].DefaultValue = chinese.Text;
        SqlDataSource1.UpdateParameters["English"].DefaultValue = english.Text;
        SqlDataSource1.UpdateParameters["Mathematics"].DefaultValue = mathematics.Text;
        SqlDataSource1.UpdateParameters["StudentNo"].DefaultValue = stuNo.Text;


        SqlDataSource1.Update();

        myData.EditItemIndex = -1;
        DataBind();


    }

    protected void myData_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label stuNo = (Label)e.Item.FindControl("lblStuNo");
        SqlDataSource1.DeleteParameters["StudentNo"].DefaultValue = stuNo.Text;
        SqlDataSource1.Delete();
        myData.EditItemIndex = -1;
        DataBind();
    }
}