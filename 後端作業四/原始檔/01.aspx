<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01.aspx.cs" Inherits="後端作業四_原始檔_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td rowspan="4">
                        <asp:ListBox ID="ltbLeft" runat="server" Width="100" Height="180" SelectionMode="Multiple">
                            <asp:ListItem Text="看雲" Value="i1"></asp:ListItem>
                            <asp:ListItem Text="發呆" Value="i2"></asp:ListItem>
                            <asp:ListItem Text="遊山" Value="i3"></asp:ListItem>
                            <asp:ListItem Text="玩水" Value="i4"></asp:ListItem>
                            <asp:ListItem Text="看電影" Value="i5"></asp:ListItem>
                            <asp:ListItem Text="睡覺" Value="i6"></asp:ListItem>
                            <asp:ListItem Text="遊泳" Value="i7"></asp:ListItem>
                            <asp:ListItem Text="賺錢" Value="i8"></asp:ListItem>
                            <asp:ListItem Text="唱歌" Value="i9"></asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text=" >> " OnClick="Button1_Click" />
                    </td>
                    <td rowspan="4">
                        <asp:ListBox ID="ltbRight" runat="server" Width="100" Height="180" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text=" >  " OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text=" <  " OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text=" << " OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
