<%@ Page Language="C#" AutoEventWireup="true" CodeFile="33DataInsert.aspx.cs" Inherits="_33DataInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #InsertData{
            border:5px double black;
            width:400px;
            margin:auto;
            box-shadow:4px 4px 4px black;
        }
        #InsertData tr{
            height:35px;
        }
        

         #InsertData tr>td:nth-child(2n+1){
             background-color:midnightblue;
             color:white;
         }

       

         #InsertData tr>td:nth-child(2n){
             background-color:cornsilk;
         
         }

         #InsertData tr:last-child>td {
            text-align:center;
            background-color:thistle;

        }
         #InsertData>caption{
             font-size:24pt;
             background-color:brown;
             color:white;
         }

         /*.myTable{
             display:none;
         }*/
         /*.showTable{
             display:block;
         }*/

    </style>

    <script src="Scripts/jquery-3.2.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <input id="Button5" type="button" value="新增資料" />

    <div class="myTable">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScores]" 
             InsertCommand="insert into StudentScores values(@Name,@StudentNo,@Address,@Chinese,@English,@Mathematics,@Class)">
            <InsertParameters>
                <asp:ControlParameter Name="Name" ControlID="txtName" Type="String" />
                <asp:ControlParameter Name="StudentNo" ControlID="txtStudentNo" Type="String" />
                <asp:ControlParameter Name="Address" ControlID="txtAddress" Type="String" />
                <asp:ControlParameter Name="Chinese" ControlID="txtChinese" Type="Int16" />
                <asp:ControlParameter Name="English" ControlID="txtEnglish" Type="Int16" />
                <asp:ControlParameter Name="Mathematics" ControlID="txtMath" Type="Int16" />
                <asp:ControlParameter Name="Class" ControlID="txtClass" Type="String" />
            </InsertParameters>


        </asp:SqlDataSource>



        <table id="InsertData">
          <caption>
              學生成績新增
          </caption>
            <tr>
                <td>學號:</td>
                <td>
                    <asp:TextBox ID="txtStudentNo" runat="server" Width="80"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtStudentNo" ID="RequiredFieldValidator1" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtStudentNo" ValidationExpression="[0-9]{6}" ID="RegularExpressionValidator1" runat="server" ErrorMessage="(須為6碼數字)" ForeColor="Red" Font-Size="10"  Display="None"></asp:RegularExpressionValidator>
                </td>
                <td>國文:</td>
                <td>
                    <asp:TextBox ID="txtChinese" runat="server" Width="40"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtChinese" ID="RequiredFieldValidator2" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ControlToValidate="txtChinese" MaximumValue="100" MinimumValue="0" Type="Integer" ID="RangeValidator1" runat="server" ErrorMessage="(0-100)" ForeColor="Red" Font-Size="10" Display="None"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
               <td>姓名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="80"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtName" ID="RequiredFieldValidator3" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td>英文:</td>
                <td>
                    <asp:TextBox ID="txtEnglish" runat="server" Width="40"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtEnglish" ID="RequiredFieldValidator4" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:RangeValidator ControlToValidate="txtEnglish" MaximumValue="100" MinimumValue="0" Type="Integer" ID="RangeValidator2" runat="server" ErrorMessage="(0-100)" ForeColor="Red" Font-Size="10" Display="None"></asp:RangeValidator>
                     </td>
            </tr>
            <tr>
               <td>班級:</td>
                <td>
                    <asp:TextBox ID="txtClass" runat="server" Width="80"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtClass" ID="RequiredFieldValidator5" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td>數學:</td>
                <td><asp:TextBox ID="txtMath" runat="server" Width="40"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtMath" ID="RequiredFieldValidator6" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ControlToValidate="txtMath" MaximumValue="100" MinimumValue="0" Type="Integer" ID="RangeValidator3" runat="server" ErrorMessage="(0-100)" ForeColor="Red" Font-Size="10" Display="None"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
               <td>地址:</td>
                <td colspan="3">
                    <asp:TextBox ID="txtAddress" runat="server" Width="95%"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="RequiredFieldValidator7" runat="server" ErrorMessage="(必填)" ForeColor="Red" Font-Size="10" Display="Dynamic"></asp:RequiredFieldValidator>

                </td>
              
            </tr>
            <tr>
               <td colspan="4">
                   <asp:Button ID="Button1" runat="server" Text="新增資料" OnClick="Button1_Click" />
                   
                   <%--reset是回復欄位的預設值,並不是清空--%>
                   <input id="Reset1" type="reset" value="重設" />
               </td>
               
            </tr>
        </table>



    </div>
    </form>

    <script>
        //var btn = document.getElementById("Button5");
        //btn.addEventListener('click', function () {
       
        //    document.getElementsByClassName("myTable")[0].className = "showTable";
        //});

        $('.myTable').hide();
        $('.myTable').slideDown(3000);
    </script>
</body>
</html>
