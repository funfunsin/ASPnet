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
        //用hinet寄
        SmtpClient myMail = new SmtpClient("msa.hinet.net");
        //myMail.Send("hahaha@msa.hinet.net", "esinfang@gmail.com","hi我是放心","hihihihihi\nhihihihihi");


        //用gmail寄
        //SmtpClient myMail = new SmtpClient("smtp.gmail.com", 587);
        //myMail.Credentials = new NetworkCredential("YourAccount", "YourPassword");  //打自己的帳號密碼 用自己真實的帳號發信
        //myMail.EnableSsl = true;


        MailAddress from = new MailAddress("esinfang@gmail.com", "放心");
        MailAddress to = new MailAddress("esinfang@gmail.com", "esinfang@yahoo.com.tw");
        MailAddress cc = new MailAddress("esinfang@gmail.com", "esinfang@yahoo.com.tw");

        MailMessage MyMsg = new MailMessage(from, to);
        MyMsg.IsBodyHtml = true;
        MyMsg.Body = "<a href='http://www.google.com.tw'>點我驗證會員身份</a>";
        MyMsg.Subject = "E-mail測試";
        MyMsg.CC.Add(cc);
        MyMsg.Bcc.Add(cc); //密件附本
        Attachment myfile = new Attachment(Server.MapPath("images/pslogo.png"));
        MyMsg.Attachments.Add(myfile);


        //for(int i=0;i<=100;i++)
        try
        {
            //myMail.Send("hahaha@msa.hinet.net", "esinfang@gmail.com", "hi我是放心", "hihihihihi");
            myMail.Send(MyMsg);

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}