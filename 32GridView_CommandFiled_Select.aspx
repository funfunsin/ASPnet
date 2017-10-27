<%@ Page Language="C#" AutoEventWireup="true" CodeFile="32GridView_CommandFiled_Select.aspx.cs" Inherits="_32GridView_CommandFiled_Select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<%--            選取的按鈕
            自動產生(AutoGenerateSelectButton):編輯,刪除的字是固定的(除非到c#端更改),欄位也固定放在第一列
            手動產生(CommandField):也可於設計畫面新增,可選擇顯示的樣式(按鈕或文字等)並移動欄位位置--%>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True">
                <Columns>

                    <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:CommandField ButtonType="Button" SelectText="顯示成績" ShowSelectButton="True" />


                </Columns>
            </asp:GridView>
            <hr />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>"
                SelectCommand="SELECT * FROM [StudentScores] where StudentNo=@StudentNo">
                <SelectParameters>
                    <%--參數是從GridView的CommandField來,也是一種控制項,所以用ControlParameter--%>
                    <asp:ControlParameter Name="StudentNo" Type="String" ControlID="GridView1" />
                </SelectParameters>

            </asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource2">
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
