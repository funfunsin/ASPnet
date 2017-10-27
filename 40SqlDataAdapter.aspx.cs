using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class _40SqlDataAdapter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ScoresConnectionString"].ConnectionString);

        //SqlDataAdapter
        SqlDataAdapter objDa = new SqlDataAdapter("select * from StudentScores",conn);

        DataSet ds = new DataSet();
        objDa.Fill(ds, "StudentScores");
    }
}