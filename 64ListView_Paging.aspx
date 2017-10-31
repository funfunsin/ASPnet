<%@ Page Language="C#" AutoEventWireup="true" CodeFile="64ListView_Paging.aspx.cs" Inherits="_64ListView_Paging" %>

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
        #myData>tbody>tr:last-child table{
            border:0px;
        }
       
        #myData>tbody>tr:last-child table tr td{
            text-align:center;
            color:blue;
        }
        #myData>tbody>tr:last-child table td span{
            color:red;
            font-size:24pt;
        }
        #myData>tbody>tr:last-child table td a:hover{
            color:green;
            font-size:24pt;
        }
        .PageBtn {
            font-family:Webdings;
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ScoresConnectionString1 %>" 
            SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        
        
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1">

            <LayoutTemplate>
                <table id="myData">
                    <caption>成績單</caption>
                    <tr>
                        <td>排序依據:
                            <asp:Button ID="Button1" runat="server" Text="姓名" CommandName="Sort" CommandArgument="Name" />
                            <asp:Button ID="Button2" runat="server" Text="國文" CommandName="Sort" CommandArgument="Chinese" />
                            <asp:Button ID="Button3" runat="server" Text="英文" CommandName="Sort" CommandArgument="English" />
                            <asp:Button ID="Button4" runat="server" Text="數學" CommandName="Sort" CommandArgument="Mathematics" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                        </td>
                    </tr>
                    <tfoot>
                        <tr>
                            <td style="text-align:center;font-size:14pt;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                                    <Fields>
                                        <asp:NextPreviousPagerField FirstPageImageUrl="~/first.jpg" PreviousPageImageUrl="~/prev.jpg"
                                             ShowFirstPageButton="true" ShowNextPageButton="false" ButtonType="Link" FirstPageText="9" ButtonCssClass="PageBtn" PreviousPageText="3" />
                                        <asp:NumericPagerField ButtonCount="5" />
                                        <asp:NextPreviousPagerField NextPageImageUrl="~/next.jpg" LastPageImageUrl="~/last.jpg"
                                             ShowLastPageButton="true" ShowPreviousPageButton="false" ButtonType="Image" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </tfoot>
                </table>

            </LayoutTemplate>


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
        </asp:ListView>

       
    </form>
</body>
</html>
