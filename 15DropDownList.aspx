<%@ Page Language="C#" AutoEventWireup="true" CodeFile="15DropDownList.aspx.cs" Inherits="_15DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="請選擇學歷" Value="0"></asp:ListItem>
                <asp:ListItem Text="博士" Value="1"></asp:ListItem>
                <asp:ListItem Text="碩士" Value="2"></asp:ListItem>
                <asp:ListItem Text="學士" Value="3"></asp:ListItem>
                <asp:ListItem Text="副學士" Value="4"></asp:ListItem>
                <asp:ListItem Text="高中職" Value="5"></asp:ListItem>
                <asp:ListItem Text="其他" Value="6"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>

            <hr />

            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:Label ID="Label2" runat="server" ></asp:Label>

        </div>
    </form>
</body>
</html>
