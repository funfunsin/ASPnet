using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _56_2Worker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Worker Josh;

        Hourly_Worker objHourly = new Hourly_Worker();
        Pieces_Worker objPieces = new Pieces_Worker();

        if(ddlWorker.SelectedValue=="h")
        {
            Josh = objHourly;
        }
        else
        {
            Josh = objPieces;
        }

        int q = Convert.ToInt32(txtQ.Text);
        Response.Write(Josh.getSalary(q));
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        IWorker Josh;

        IHourly_Worker objHourly = new IHourly_Worker();
        IPieces_Worker objPieces = new IPieces_Worker();

        if (ddlWorker.SelectedValue == "h")
        {
            Josh = objHourly;
        }
        else
        {
            Josh = objPieces;
        }


        int q = Convert.ToInt32(txtQ.Text);
        Response.Write(Josh.getSalary(q));
    }
}