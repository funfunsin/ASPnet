<%@ Page Language="C#" AutoEventWireup="true" CodeFile="57DB_HW6.aspx.cs" Inherits="_57DB_HW6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
                InsertCommand="addCourse" InsertCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:ControlParameter Name="id" ControlID="txtID" Type="String" />
                    <asp:ControlParameter Name="name" ControlID="txtName" Type="String" />
                    <asp:ControlParameter Name="c" ControlID="txtCredit" Type="Int16" />
                </InsertParameters>
            </asp:SqlDataSource>

            <table style="width:400px;">
                <tr>
                    <td>課程編號:</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtID" runat="server" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtID" runat="server" ForeColor="Red" ErrorMessage="必填項目" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtID" ValidationExpression="CS[0-9]{3}" runat="server" ErrorMessage="必為CS_ _ _ 開頭" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>課程名稱:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtName" runat="server" ForeColor="Red" ErrorMessage="必填項目" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>課程學分:</td>
                    <td>
                        <asp:TextBox ID="txtCredit" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtCredit" runat="server" ForeColor="Red" ErrorMessage="必填項目" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtCredit" runat="server" MinimumValue="0" MaximumValue="10" Type="Integer" ErrorMessage="需為0-10之間" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td  colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="新增課程資料" OnClick="Button1_Click" />

                    </td>
                </tr>
            </table>




        </div>
    </form>
</body>
</html>
