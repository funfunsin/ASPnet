<%@ Page Language="C#" AutoEventWireup="true" CodeFile="39Repeater.aspx.cs" Inherits="_39" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        #myData {
            width: 300px;
            margin: auto;
        }

            #myData table {
                border: 2px groove;
                width: inherit;
            }

                #myData .table1 tr {
                    background-color: aquamarine;
                }
                #myData .table2 tr {
                    background-color:#fcc3e6;
                }

                #myData table td {
                    border: 1px double #ee3087;
                }

                    #myData table td:nth-child(2n+1) {
                        background-color: #ffd800;
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="myData">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString1 %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="table1">
                        <tr>
                            <td>學號：</td>
                            <td><%#Eval("StudentNo") %></td>
                            <td>國文：</td>
                            <td><%#Eval("Chinese") %></td>
                        </tr>
                        <tr>
                            <td>姓名：</td>
                            <td><%#Eval("Name") %></td>
                            <td>英文：</td>
                            <td><%#Eval("English") %></td>
                        </tr>
                        <tr>
                            <td>班級：</td>
                            <td><%#Eval("Class") %></td>
                            <td>數學：</td>
                            <td><%#Eval("Mathematics") %></td>
                        </tr>
                        <tr>
                            <td>地址：</td>
                            <td colspan="3"><%#Eval("Address") %></td>
                        </tr>
                    </table>
                    <hr />
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <table class="table2">
                        <tr>
                            <td>學號：</td>
                            <td><%#Eval("StudentNo") %></td>
                            <td>姓名：</td>
                            <td><%#Eval("Name") %></td>
                        </tr>
                        <tr>
                            <td>國文：</td>
                            <td><%#Eval("Chinese") %></td>
                            <td>英文：</td>
                            <td><%#Eval("English") %></td>
                        </tr>
                        <tr>
                            <td>班級：</td>
                            <td><%#Eval("Class") %></td>
                            <td>數學：</td>
                            <td><%#Eval("Mathematics") %></td>
                        </tr>
                        <tr>
                            <td>地址：</td>
                            <td colspan="3"><%#Eval("Address") %></td>
                        </tr>
                    </table>
                    <hr />
                </AlternatingItemTemplate>

                <SeparatorTemplate>
                    <img src="line.gif" width="100%" />
                </SeparatorTemplate>
            </asp:Repeater>
        </div>
    </form>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script>
        $('#myData').hide();
        $('#myData table').hide();
        $('#myData').show(2000, function () {
            $('#myData table').show(3000);
        });
    </script>

</body>
</html>
