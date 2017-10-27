using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MessagingToolkit.QRCode.Codec;
using System.Drawing;
using System.Drawing.Imaging;

public partial class _52QRcode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        QRCodeEncoder encoder = new QRCodeEncoder();

        encoder.QRCodeScale = 100;
        string UserID = "user0001";

        System.Drawing.Image logo = System.Drawing.Image.FromFile(Server.MapPath("/images/pslogo.png"));

        Bitmap img = encoder.Encode(UserID);
        Graphics g = Graphics.FromImage(img);

        int left = (img.Width - logo.Width) / 2;
        int top = (img.Height - logo.Height) / 2;

        g.DrawImage(logo, new Point(left, top));

        img.Save(Server.MapPath("/qrcode/"+UserID+".jpg"),ImageFormat.Jpeg);

        Image1.ImageUrl = "qrcode/" + UserID + ".jpg";
    }
}