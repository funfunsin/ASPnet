<%@ Page Language="C#" AutoEventWireup="true" CodeFile="57DB_homework6.aspx.cs" Inherits="_57DB_homework6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <table style="width:350px;">
            <tr>
                <td>課程編號:</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txtID" runat="server" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtID" ID="RequiredFieldValidator1" runat="server" ErrorMessage="(必填)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ControlToValidate="txtID" ValidationExpression="CS[0-9]{3}" ID="RegularExpressionValidator1" runat="server" ErrorMessage="(請檢查格式)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                            <%-- <asp:CustomValidator ControlToValidate="txtID" OnServerValidate="CustomValidator1_ServerValidate" ID="CustomValidator1" runat="server" ErrorMessage="(編號重複)" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>--%>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>

            </tr>
            <tr>
                <td>課程名稱:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtName" ID="RequiredFieldValidator2" runat="server" ErrorMessage="(必填)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td>學分數:</td>
                <td>
                    <asp:TextBox ID="txtCredit" runat="server" Width="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtCredit" ID="RequiredFieldValidator3" runat="server" ErrorMessage="(必填)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    <asp:RangeValidator ControlToValidate="txtCredit" ID="RangeValidator1" runat="server" MinimumValue="0" MaximumValue="10" Type="Integer" ErrorMessage="(請檢查格式)" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
                 </td>
             
            </tr>
             <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="新增課程資料" />
                </td>
              
             
            </tr>
        </table>


    </div>
    </form>
</body>
</html>
