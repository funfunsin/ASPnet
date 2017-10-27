<%@ Page Language="C#" AutoEventWireup="true" CodeFile="54QRCode3.aspx.cs" Inherits="_54QRCode3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            學號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>

            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="LinkButton1" />
                </Triggers>
                <ContentTemplate>


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>"
                        SelectCommand="選課狀況查詢" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="s_name" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1"
                        GridLines="Horizontal" EmptyDataText="查無資料" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        <Columns>
                            <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="性別" HeaderText="性別" SortExpression="性別" />
                            <asp:BoundField DataField="課程編號" HeaderText="課程編號" SortExpression="課程編號" />
                            <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                            <asp:BoundField DataField="教授編號" HeaderText="教授編號" SortExpression="教授編號" />
                            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                            <asp:BoundField DataField="職稱" HeaderText="職稱" SortExpression="職稱" />
                            <asp:BoundField DataField="科系" HeaderText="科系" SortExpression="科系" />
                            <asp:BoundField DataField="上課時間" HeaderText="上課時間" SortExpression="上課時間" />
                            <asp:BoundField DataField="教室" HeaderText="教室" SortExpression="教室" />
                        </Columns>
                        <EmptyDataRowStyle BackColor="Red" ForeColor="White" Font-Size="18pt" />
                    </asp:GridView>
                </ContentTemplate>

            </asp:UpdatePanel>

        </div>
    </form>

    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script>

        //var text = document.getElementById("LinkButton1");
        //text.value
        $('#TextBox1').focus();

        $('#TextBox1').keyup(function () {
            //alert("pppp");
            var len = $('#TextBox1').val().length;
            if (len == 4) {

                __doPostBack('LinkButton1', '');
                $('#TextBox1').val('');
            }

        });

    </script>

</body>
</html>
