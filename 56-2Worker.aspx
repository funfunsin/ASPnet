<%@ Page Language="C#" AutoEventWireup="true" CodeFile="56-2Worker.aspx.cs" Inherits="_56_2Worker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlWorker" runat="server">
            <asp:ListItem Text="計時制" Value="h"></asp:ListItem>
            <asp:ListItem Text="計件制" Value="p"></asp:ListItem>
        </asp:DropDownList>
        工作量:<asp:TextBox ID="txtQ" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="計算薪資" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="計算薪資(介面)" OnClick="Button2_Click" />

    </div>
    </form>
</body>
</html>
