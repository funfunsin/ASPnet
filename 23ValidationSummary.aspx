<%@ Page Language="C#" AutoEventWireup="true" CodeFile="23ValidationSummary.aspx.cs" Inherits="_23ValidationSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true"  DisplayMode="BulletList" runat="server" />


        帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="請輸入帳號"  Text="(必填)" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox1" ValidationExpression="[a-z][0-9]{4}" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
        密碼:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="請輸入密碼"  Text="(必填)" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="登入" />
    </div>
    </form>
</body>
</html>
