﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11Button.aspx.cs" Inherits="_11Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />

        <asp:Button ID="Button2" runat="server" Text="Button" ForeColor="Violet" onclick="Button2_Click" />
        
        <asp:Button ID="Button3" runat="server" Text="發牌" OnClick="Button3_Click" />

    </div>
    </form>
</body>
</html>
