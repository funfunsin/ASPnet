<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation Controls.aspx.cs" Inherits="後端作業五_原始檔_Validation_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script>
        function IDCheck(sender, args) {
            var id = document.getElementById("TextBox1").value;
            var eng = new Array("A", "B", "C", "D", "E", "F", "G", "H", "J", "K",
                "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "X", "Y", "W",
                "Z", "I", "O");
            var intEng = 0;

            for (i = 0; i < eng.length; i++) {

                if (id.substr(0, 1) == eng[i]) {
                    intEng = i + 10;
                    break;
                }
            }

            var n1 = Math.floor(intEng / 10);
            var n2 = intEng % 10;

            var a = new Array(9);
            for (i = 0; i < a.length; i++) {
                a[i] = Number(id.substr(i + 1, 1));
            }

            //平鋪直述的寫法
            //sum = n1 + n2 * 9 + a[0] * 8 + a[1] * 7 + a[2] * 6 + a[3] * 5 + a[4] * 4 + a[5] * 3 + a[6] * 2 + a[7] + a[8];
            var sum = 0;
            //一切以炫技為主
            for (i = 0; i < 8; i++) {
                sum += a[i] * (8 - i);
            }

            sum += n1 + n2 * 9 + a[8];
            if (sum % 10 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="送出" />
            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="這是必要欄位!"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="TextBox1" ValidationExpression="[A-Z][12]\d{8}" ID="RegularExpressionValidator1" runat="server" ErrorMessage="格式有誤"></asp:RegularExpressionValidator>
            <asp:CustomValidator ControlToValidate="TextBox1" ClientValidationFunction="IDCheck" ID="CustomValidator1" runat="server" ErrorMessage="不合法的身分證字號"></asp:CustomValidator>

        </div>
    </form>
</body>
</html>
