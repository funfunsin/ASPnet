<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25GridView.aspx.cs" Inherits="_25GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #GridView1 span{
            font-size:36pt;
        }
        #GridView1 tr:last-child a:hover{
            font-size:24pt;
        }
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" CssClass="alert-danger"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登出系統</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true" AllowSorting="true"
            BackColor="White" BorderColor="#ff3300" BorderStyle="Dotted" BorderWidth="5px" CellPadding="3" 
            DataKeyNames="StudentNo" DataSourceID="SqlDataSource1" GridLines="Both" PageSize="3">
            
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="學生姓名" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="學號" ReadOnly="True" SortExpression="StudentNo" />
                <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Columns>

            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#ffcc00" Font-Bold="True" ForeColor="#0000cc" BorderStyle="Double" BorderWidth="8px" BorderColor="#003300" />

            <PagerStyle BackColor="#E7E7FF" ForeColor="#ff0000" HorizontalAlign="Center" Font-Size="16pt" />

            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <AlternatingRowStyle BackColor="#F7F7F7" />

            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />

            <SortedAscendingCellStyle BackColor="#9900cc" ForeColor="White" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />

            <SortedDescendingCellStyle BackColor="#D8D8F0" BorderColor="Green" BorderStyle="Dotted" BorderWidth="5px" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        <hr />

        <asp:GridView ID="GridView2" runat="server" 
            DataSourceID="SqlDataSource1" OnRowDataBound="GridView2_RowDataBound"></asp:GridView>


    </div>
    </form>
</body>
</html>