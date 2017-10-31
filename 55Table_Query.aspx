<%@ Page Language="C#" AutoEventWireup="true" CodeFile="55Table_Query.aspx.cs" Inherits="_55Table_Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="員工"></asp:ListItem>
            <asp:ListItem Text="學生"></asp:ListItem>
            <asp:ListItem Text="課程"></asp:ListItem>
            <asp:ListItem Text="班級"></asp:ListItem>
            <asp:ListItem Text="教授"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="確定" />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
            SelectCommand="table_query" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="table_name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
          
        </asp:GridView>
    </div>
    </form>
</body>
</html>
