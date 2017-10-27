using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MessagingToolkit.QRCode.Codec;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _53QRCode2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        QRCodeEncoder encoder = new QRCodeEncoder();
        encoder.QRCodeScale = 100;
        string UserId = "";
        System.Drawing.Image logo = System.Drawing.Image.FromFile(Server.MapPath("/images/pslogo.png"));



        Bitmap img; //encoder.Encode(UserId);
        Graphics g;// Graphics.FromImage(img);

        int left = 0;// (img.Width - logo.Width) / 2;
        int top = 0;// (img.Height - logo.Height) / 2;

        //g.DrawImage(logo, new Point(left, top));
        //img.Save(Server.MapPath("/qrcode/" + UserId + ".jpg"), ImageFormat.Jpeg);
        //Image1.ImageUrl = "qrcode/" + UserId + ".jpg";


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["教務系統ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select 學號 from 學生", conn);

        SqlDataReader rd;
        conn.Open();
        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            UserId = rd["學號"].ToString();
            img = encoder.Encode(UserId);
            g = Graphics.FromImage(img);
            left = (img.Width - logo.Width) / 2;
            top = (img.Height - logo.Height) / 2;

            g.DrawImage(logo, new Point(left, top));
            img.Save(Server.MapPath("/qrcode/" + UserId + ".jpg"), ImageFormat.Jpeg);
            //Image1.ImageUrl = "qrcode/" + UserId + ".jpg";
            System.Web.UI.WebControls.Image image = new System.Web.UI.WebControls.Image();
            image.ID = UserId;
            image.ImageUrl = "qrcode/" + UserId + ".jpg";
            image.Width = Unit.Pixel(170);

            form1.Controls.Add(image);
        }


        conn.Close();
    }
}