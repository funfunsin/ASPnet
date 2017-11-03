<%@ Page Language="C#" AutoEventWireup="true" CodeFile="67Login.aspx.cs" Inherits="_67Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        tr{
            height:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">


    <div class="container">
        <fieldset>
            <legend>
                Login
            </legend>
             <table style="width:90%">
            <tr>
                <td class="text-right"><label for="txtAccount">帳號：</label></td>
                <td>
                    <asp:TextBox ID="txtAccount" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtAccount" ID="RequiredFieldValidator1" runat="server" ErrorMessage="(必填)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtAccount" ID="RegularExpressionValidator1" runat="server" ErrorMessage="(3-20碼)" ValidationExpression="[A-Za-z]\w{2,20}" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
               
            </tr>
            <tr>
                <td class="text-right"><label for="txtPwd">密碼：</label></td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPwd" ID="RequiredFieldValidator2" runat="server"  ErrorMessage="(必填)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtPwd" ID="RegularExpressionValidator2" runat="server" ValidationExpression=".{3,20}" ErrorMessage="(3-20碼)" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
             
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="登入" CssClass="btn btn-primary" OnClick="Button1_Click" />
                    <input id="Reset1" type="reset" value="重填" class="btn btn-default" />  <%--沒有要跟後端連結.就拉前端的控制項就好--%>
                </td>
                
               
            </tr>
        </table>
            <asp:Label ID="lblInfo" runat="server" CssClass="alert-danger"></asp:Label>
        </fieldset>

       

    </div>
    </form>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>