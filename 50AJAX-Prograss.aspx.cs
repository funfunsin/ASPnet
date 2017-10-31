using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Media;


public partial class _50AJAX_Prograss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Thread.Sleep(5000);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Thread.Sleep(5000);

        SoundPlayer sp = new SoundPlayer(Server.MapPath("/PokemonGo.mp3"));
        sp.Play();
    }
}