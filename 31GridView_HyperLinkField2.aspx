<%@ Page Language="C#" AutoEventWireup="true" CodeFile="31GridView_HyperLinkField2.aspx.cs" Inherits="_31GridView_HyperLinkField2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScores] where StudentNo=@StudentNo">
          <SelectParameters>
              <%--參數是從網址來的,所以選擇器的參數用QueryStringParameter--%>
              <asp:QueryStringParameter Name="StudentNo" Type="String" QueryStringField="No" />
          </SelectParameters>


        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
             
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
