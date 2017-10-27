<%@ Page Language="C#" AutoEventWireup="true" CodeFile="10WebForm.aspx.cs" Inherits="_10WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="mybtn" runat="server" Text="發牌" />
        </div>
    </form>
</body>
</html>
