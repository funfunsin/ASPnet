<%@ Page Language="C#" AutoEventWireup="true" CodeFile="29GridView_BoundFeild.aspx.cs" Inherits="_29GridView_BoundFeild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1"
                AllowSorting="true" OnRowCommand="ShowOrderList">
                
                <%--定義欄位--%>
                <Columns>
                    <asp:BoundField DataField="StudentNo" HeaderText="學號" ReadOnly="True" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                    <asp:BoundField DataField="Chinese" HeaderText="國文" SortExpression="Chinese" />
                    <asp:BoundField DataField="English" HeaderText="英文" SortExpression="English" />
                    <asp:BoundField DataField="Mathematics" HeaderText="數學" SortExpression="Mathematics" />
                    <asp:BoundField DataField="Class" HeaderText="班級" SortExpression="Class" />
                    <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                    <asp:ButtonField CommandName="Order" Text="加入購物車" ButtonType="Button" />
                    <asp:ButtonField CommandName="Avg" Text="平均成績" ButtonType="Button" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblCar" runat="server"></asp:Label>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
