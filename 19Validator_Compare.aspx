<%@ Page Language="C#" AutoEventWireup="true" CodeFile="19Validator_Compare.aspx.cs" Inherits="_19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TextBox1" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="(必填)"></asp:RequiredFieldValidator>
            <asp:CompareValidator ControlToValidate="TextBox1" Display="Dynamic" Type="Integer" ValueToCompare="0" Operator="GreaterThanEqual" ID="CompareValidator1" runat="server" ErrorMessage="(不得為負值)"></asp:CompareValidator>
            <br />
            生日:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>(ex:1990/1/1)
        <asp:CompareValidator ControlToValidate="TextBox2" ID="CompareValidator2" Type="Date" Operator="DataTypeCheck" runat="server" ErrorMessage="(請檢查日期格式)"></asp:CompareValidator>
            <br />

            最低價格:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="TextBox3" Display="Dynamic" Type="Integer" ValueToCompare="100" Operator="GreaterThanEqual" ID="CompareValidator3" runat="server" ErrorMessage="(價格不得低於100元)"></asp:CompareValidator>

            最高價格:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="TextBox4" Type="Integer" Display="Dynamic" ControlToCompare="TextBox3" Operator="GreaterThan" ID="CompareValidator4" runat="server" ErrorMessage="(最高價格不得低於最低價格)"></asp:CompareValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" />

        </div>
    </form>
</body>
</html>
