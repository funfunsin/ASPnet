<%@ Page Language="C#" AutoEventWireup="true" CodeFile="21Validator_RegularExpression.aspx.cs" Inherits="_21Validator_RegularExpression" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>(ex:078210171) <%--0\d{8,9}   09\d{8}--%>
        <asp:RegularExpressionValidator ControlToValidate="TextBox1" ValidationExpression="([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})" ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
        
        
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
