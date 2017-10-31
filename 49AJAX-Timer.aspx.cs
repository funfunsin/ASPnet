using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _49AJAX_Timer : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();
        if(!IsPostBack)
            ViewState["counter"] = 1;
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DataBind();
    }

    //protected void Timer2_Tick(object sender, EventArgs e)
    //{
    //    int counter =Convert.ToInt32(ViewState["counter"]);
    //    string s = "瑞典女記者瓦爾8月上旬出國到丹麥採訪自行打造潛水艇的發明家馬德森，卻離奇殞命，成為一具無頭女屍；涉重嫌的馬德森否認殺害瓦爾，堅稱瓦爾是意外死亡。檢方以「謀殺罪」起訴馬德森，本案3日舉行聽審，負責本案的檢察官說，瓦爾的遺體有15處刀傷，警方還在馬德森的實驗室電腦裡找到瓦爾活生生被斬首的影片。";

    //    if (counter <= s.Count())
    //    {
    //        Label1.Text = s.Substring(0, counter);
    //        ViewState["counter"] = Convert.ToInt32(ViewState["counter"]) + 1;
    //    }
    //}

    protected void Timer3_Tick(object sender, EventArgs e)
    {
        List<string> aaa = new List<string>();
        aaa.Add("志鴻上學不遲到!!");
        aaa.Add("志鴻每天都牽老人過馬路!!");
        aaa.Add("志鴻每天都拾金不昧!!");
        aaa.Add("志鴻確實是一個好孩子!!");

        Random r = new Random();
        Label3.Text =  aaa[r.Next(0, aaa.Count)];

    }
}