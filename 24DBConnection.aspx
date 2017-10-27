<%@ Page Language="C#" AutoEventWireup="true" CodeFile="24DBConnection.aspx.cs" Inherits="_24DBConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1" EmptyDataText="沒有資料錄可顯示。">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" DeleteCommand="DELETE FROM [StudentScores] WHERE [StudentNo] = @StudentNo" InsertCommand="INSERT INTO [StudentScores] ([Name], [StudentNo], [Address], [Chinese], [English], [Mathematics], [Class]) VALUES (@Name, @StudentNo, @Address, @Chinese, @English, @Mathematics, @Class)" ProviderName="<%$ ConnectionStrings:ScoresConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [StudentNo], [Address], [Chinese], [English], [Mathematics], [Class] FROM [StudentScores]" UpdateCommand="UPDATE [StudentScores] SET [Name] = @Name, [Address] = @Address, [Chinese] = @Chinese, [English] = @English, [Mathematics] = @Mathematics, [Class] = @Class WHERE [StudentNo] = @StudentNo">
            <DeleteParameters>
                <asp:Parameter Name="StudentNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="StudentNo" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Chinese" Type="Int32" />
                <asp:Parameter Name="English" Type="Int32" />
                <asp:Parameter Name="Mathematics" Type="Int32" />
                <asp:Parameter Name="Class" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Chinese" Type="Int32" />
                <asp:Parameter Name="English" Type="Int32" />
                <asp:Parameter Name="Mathematics" Type="Int32" />
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="StudentNo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

    <hr />
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
    </form>
</body>
</html>
