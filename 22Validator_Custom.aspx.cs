using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _22Validator_Custom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string id=TextBox1.Text;
        int intEng = 0;
        string[] eng = {"A","B","C","D","E","F","G","H","J","K",
        "L","M","N","P","Q","R","S","T","U","V","X","Y","W",
        "Z","I","O"};

        for(int i=0;i<eng.Length;i++)
        {
            if( id.Substring(0,1)==eng[i])
            {
                intEng = i + 10;
                break;
            }
        }

        int n1 = intEng / 10;
        int n2 = intEng % 10;

        int[] a = new int[9];
        for(int i=0;i<a.Length;i++)
        {
            a[i] =Convert.ToInt16(id.Substring(i+1,1));
        }

        int sum = 0;

        //平鋪直述的寫法
        //sum = n1 + n2 * 9 + a[0] * 8 + a[1] * 7 + a[2] * 6 + a[3] * 5 + a[4] * 4 + a[5] * 3 + a[6] * 2 + a[7] + a[8];

        //一切以炫技為主
        for(int i=0;i<8;i++)
        {
            sum += a[i] * (8 - i);
        }

        sum += n1 + n2*9 +a[8];


        if (sum % 10 == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}