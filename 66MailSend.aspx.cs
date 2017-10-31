using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _66MailSend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SmtpClient myMail = new SmtpClient("msa.hinet.net");
        //myMail.Send("hahaha@msa.hinet.net", "esinfang@gmail.com","hi我是放心","hihihihihi");

        SmtpClient myMail = new SmtpClient("smtp.gmail.com", 587);
        myMail.Credentials = new NetworkCredential("YourAccount", "YourPassword");
        myMail.EnableSsl = true;

        //for(int i=0;i<=100;i++)
        try
        {
            myMail.Send("hahaha@msa.hinet.net", "esinfang@gmail.com", "hi我是放心", "hihihihihi");

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}