<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20Validator_Range.aspx.cs" Inherits="_20Validator_Range" %>

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
        <asp:RangeValidator ControlToValidate="TextBox1" Type="Integer" MinimumValue="0" MaximumValue="100" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
