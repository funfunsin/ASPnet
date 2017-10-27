<%@ Page Language="C#" AutoEventWireup="true" CodeFile="36DetailsView2.aspx.cs" Inherits="_36DetailsView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #DetailsView1 tr:last-child span {
            font-size:24pt; color:red;
        }
        #DetailsView1 tr:last-child a:hover {
            font-size:18pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString1 %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="235px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings PageButtonCount="4"
                 LastPageImageUrl="~/last.jpg"
                 FirstPageImageUrl="~/first.jpg"
                 NextPageImageUrl="~/next.jpg"
                 PreviousPageImageUrl="~/prev.jpg" />

            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />

            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

        </asp:DetailsView>
        <hr />
        <asp:DetailsView ID="DetailsView2" DataSourceID="SqlDataSource1" runat="server" Height="50px" Width="234px" AllowPaging="true">
            <PagerSettings PageButtonCount="3" />

        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
