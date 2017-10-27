<%@ Page Language="C#" AutoEventWireup="true" CodeFile="51StoredProcedures.aspx.cs" Inherits="_51StoredProcedures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
            SelectCommand="學生查詢" SelectCommandType="StoredProcedure">

             <SelectParameters>
                 <asp:ControlParameter Name="s_name" Type="String" ControlID="TextBox1" />
             
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="學號" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="學號" HeaderText="學號" ReadOnly="True" SortExpression="學號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                <asp:BoundField DataField="電話" HeaderText="電話" SortExpression="電話" />
                <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" />
            </Columns>
        </asp:GridView>
        <hr />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
            SelectCommand="SELECT          dbo.學生.學號, dbo.學生.姓名, dbo.學生.性別, dbo.課程.課程編號, dbo.課程.名稱, dbo.教授.教授編號, 
                            dbo.員工.姓名 AS Expr1, dbo.教授.職稱, dbo.教授.科系, dbo.班級.上課時間, dbo.班級.教室
FROM              dbo.員工 INNER JOIN
                            dbo.教授 ON dbo.員工.身份證字號 = dbo.教授.身份證字號 INNER JOIN
                            dbo.班級 ON dbo.教授.教授編號 = dbo.班級.教授編號 INNER JOIN
                            dbo.課程 ON dbo.班級.課程編號 = dbo.課程.課程編號 INNER JOIN
                            dbo.學生 ON dbo.班級.學號 = dbo.學生.學號"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <hr />



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
            SelectCommand="SELECT * FROM [view_學生選課明細]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
           
        </asp:GridView>
        <hr />


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
            SelectCommand="學生選課資料明細" SelectCommandType="StoredProcedure">

        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource3"></asp:GridView>
    </div>
    </form>
</body>
</html>
