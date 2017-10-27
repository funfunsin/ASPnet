<%@ Page Language="C#" AutoEventWireup="true" CodeFile="13CheckBox.aspx.cs" Inherits="_13CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="請選擇興趣:"></asp:Label>
        <asp:CheckBox ID="ckbIntres1" runat="server" Text="爬山" />
        <asp:CheckBox ID="ckbIntres2" runat="server" Text="踏青" />
        <asp:CheckBox ID="ckbIntres3" runat="server" Text="看雲" />
        <asp:CheckBox ID="ckbIntres4" runat="server" Text="健行" />
        <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />

        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <hr />

        <asp:Label ID="Label2" runat="server" Text="請選擇興趣:"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="爬山" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="踏青" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="看雲" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="健行" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
      <%--  <input id="Checkbox1" type="checkbox"  /><label for="Checkbox1">記住我</label>--%>
    
    
    <hr />
      
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
            <asp:ListItem Text="爬山"></asp:ListItem>
            <asp:ListItem Text="踏青"></asp:ListItem>
            <asp:ListItem Text="看雲"></asp:ListItem>
            <asp:ListItem Text="健行"></asp:ListItem>
          
        </asp:CheckBoxList>
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <hr />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="爬山"></asp:ListItem>
            <asp:ListItem Text="踏青"></asp:ListItem>
            <asp:ListItem Text="看雲"></asp:ListItem>
            <asp:ListItem Text="健行"></asp:ListItem>
          
        </asp:CheckBoxList>

    </div>
    </form>
</body>
</html>
