<%@ Page Language="C#" AutoEventWireup="true" CodeFile="42FileUpload.aspx.cs" Inherits="_42FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        品號:<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        品名:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        圖片:<asp:FileUpload ID="fulImg" runat="server" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
