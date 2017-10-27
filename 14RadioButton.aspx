<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14RadioButton.aspx.cs" Inherits="_14RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RadioButton ID="rdbGenderMale" runat="server" Text="男" GroupName="gender" />
            <%--GroupName="gender"設為同一群組名字就能使button只能選擇其一--%>
            <asp:RadioButton ID="rdbGenderFemale" runat="server" Text="女" GroupName="gender" Checked="true" />
            <%--Checked="true"預設選擇--%>
            <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />

            <br />

            <asp:Label ID="Label1" runat="server"></asp:Label>

            <hr />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true" >
                <asp:ListItem Text="博士" Value="1"></asp:ListItem>
                <asp:ListItem Text="碩士" Value="2"></asp:ListItem>
                <asp:ListItem Text="學士" Value="3"></asp:ListItem>
                <asp:ListItem Text="副學士" Value="4"></asp:ListItem>
                <asp:ListItem Text="高中職" Value="5"></asp:ListItem>
                <asp:ListItem Text="其他" Value="6"></asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
