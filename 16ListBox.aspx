<%@ Page Language="C#" AutoEventWireup="true" CodeFile="16ListBox.aspx.cs" Inherits="_16ListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <%--優點:單選多選皆可!--%>
            <asp:ListBox ID="ListBox1" runat="server" >
                <asp:ListItem Text="爬山"></asp:ListItem>
                <asp:ListItem Text="踏青"></asp:ListItem>
                <asp:ListItem Text="看雲"></asp:ListItem>
                <asp:ListItem Text="健行"></asp:ListItem>
            </asp:ListBox>

        </div>
    </form>
</body>
</html>
