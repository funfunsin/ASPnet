<%@ Page Language="C#" AutoEventWireup="true" CodeFile="17Table.aspx.cs" Inherits="_17Table" %>

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
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        <asp:Table ID="Table1" runat="server" Caption="成績單" GridLines="Both" Width="600" BorderStyle="Groove" BorderWidth="5" >
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>
                    姓名
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    成績
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableFooterRow>

            </asp:TableFooterRow>
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    放心
                </asp:TableCell>
                <asp:TableCell>
                    100
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    </div>
    </form>
</body>
</html>
