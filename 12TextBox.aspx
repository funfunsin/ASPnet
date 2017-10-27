<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12TextBox.aspx.cs" Inherits="_12TextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <%--後端ASP寫法--%>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="10" Columns="2"></asp:TextBox>

        <%--前端HTML寫法--%>
        <input id="Text1" type="text" />


        <hr />

        <%--取值--%>
        <asp:TextBox ID="TextBox2" runat="server" backColor="Blue"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="送出!" onclick="Button1_Click"/>
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>  <%--先把Label1的Text屬性預設值拿掉--%>


    </div>
    </form>
</body>
</html>
