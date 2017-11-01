<%@ Page Language="C#" AutoEventWireup="true" CodeFile="67Login.aspx.cs" Inherits="_67" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                </td>
               
            </tr>
            <tr>
                <td class="text-right"><label for="txtPwd">密碼：</label></td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="登入" CssClass="btn btn-primary" />
                    <input id="Reset1" type="reset" value="重填" class="btn btn-default" />
                </td>
                
               
            </tr>
        </table>
        </fieldset>
    
    </div>
    </form>


    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
