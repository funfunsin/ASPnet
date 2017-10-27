<%@ Page Language="C#" AutoEventWireup="true" CodeFile="58DataList.aspx.cs" Inherits="_58DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #myData{
            width:330px;
            margin:auto;
            /*border:2px solid*/
        }
        #myData table{
            border:3px groove;
            width:330px;
        }
        #myData table tr{
            height:30px;
        }

        #myData .table1 tr{
            background-color:#f7ffad;
        }
        #myData .table2 tr{
            background-color:#ffc4c4;
        }
        #myData .table1 td{
            border:1px double red;
        }
        #myData .table td{
            border:1px double green;
        }
        #myData table td:nth-child(2n+1){
            color:white;
            text-align:right;
        }
        #myData .table1 td:nth-child(2n+1){
            background-color:#198100;
            width:60px;
        }
        #myData .table2 td:nth-child(2n+1){
            background-color:darkcyan;
        }
        #myData h1{
            text-align:center;

        }
        #myData h5{
            text-align:right;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        <asp:DataList ID="myData" runat="server" DataKeyField="StudentNo" DataSourceID="SqlDataSource1" RepeatColumns="4">
            <SeparatorTemplate>
                
            </SeparatorTemplate>
            
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
                        
                        <td>數學：</td>
                        <td><%#Eval("Mathematics") %></td>
                       <td>班級：</td>
                        <td><%#Eval("Class") %></td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td colspan="3"><%#Eval("Address") %></td>
                     
                    </tr>
                </table>
            </AlternatingItemTemplate>

            <HeaderTemplate>
                <h1>成績單</h1>
            </HeaderTemplate>
            <FooterTemplate>
                <h5>製表人:廖德華</h5>
            </FooterTemplate>
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
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
