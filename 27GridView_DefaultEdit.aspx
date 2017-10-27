<%@ Page Language="C#" AutoEventWireup="true" CodeFile="27GridView_DefaultEdit.aspx.cs" Inherits="_27GridView_DefaultEdit" %>

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

        <%--設為DataKeyNames者不可被變動--%>
        <%--OnRowDataBound:當該row重新做資料細節更動時執行--%>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True"
              OnRowDataBound="GridView1_RowDataBound" DataKeyNames="StudentNo" AutoGenerateColumns="False"
            >
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Columns>
        </asp:GridView>
    </div>



    </form>
</body>
</html>
