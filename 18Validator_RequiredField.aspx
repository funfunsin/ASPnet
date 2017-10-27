<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18Validator_RequiredField.aspx.cs" Inherits="_18Validator_RequiredField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="(必填)"></asp:RequiredFieldValidator>
        <br />
        密碼:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="(必填)"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="登入" />

        <hr />

       <%-- 若要避免執行驗證，請設定 CausesValidation 屬性 false--%>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="查詢1" CausesValidation="false" />

        <hr />

        <%--設定ValidationGroup可讓該驗證只用於該按鈕--%>
        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="aaa"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="TextBox4" ValidationGroup="aaa" ID="RequiredFieldValidator3" runat="server" ErrorMessage="(必填)"></asp:RequiredFieldValidator>
        <asp:Button ID="Button3" runat="server" Text="查詢2" ValidationGroup="aaa" />

    </div>
    </form>
</body>
</html>
