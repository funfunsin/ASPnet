using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _56Person : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Person Jack = new Person();
        //Jack.age = -50;
        Jack.Name = "Jack";
        Response.Write(Jack.Name);
        Jack.Name = null;
        Response.Write(Jack.Name);
    
        //Jack.height = 90.8M;

        Person Mary = new Person();
        Mary.Name = "瑪莉";
        Mary.Gender = false;
        Mary.Age = 20;
        Mary.Height = 160;
        Mary.Weight = 45;
        Response.Write(Mary.Gender);

        /////////////////////////////
        Person aaa = new Person("aaa", 5, 80, 170, true);
        
        Response.Write(aaa.getBMI());
        Response.Write(aaa.getBMI(80, 170));

        GridView1.DataSource= aaa.getStudentScore("張鴻昌");
        GridView1.DataBind();
        ///////////////////////////////////////////////////////////
        Male John = new Male();

        Female May = new Female();
        

    }
}