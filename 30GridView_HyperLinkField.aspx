<%@ Page Language="C#" AutoEventWireup="true" CodeFile="30GridView_HyperLinkField.aspx.cs" Inherits="_30GridView_HyperLinkField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1">
            <Columns>

                <%--網址後面要帶參數+問號 xxx.apsx "?" "自訂參數={第幾個參數}" 若有多個參數用&連接--%>
                <asp:HyperLinkField DataTextField="StudentNo" HeaderText="StudentNo" 
                    DataNavigateUrlFormatString="31GridView_HyperLinkField2.aspx?No={0}&Name={1}" 
                    DataNavigateUrlFields="StudentNo,Name" DataTextFormatString="{0}" />
                
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            
            </Columns>
        </asp:GridView>

        <a href="31GridView_HyperLinkField2.aspx?No=900111&Name=王鴻章">900111</a>

    </div>
    </form>
</body>
</html>
