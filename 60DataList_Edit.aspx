<%@ Page Language="C#" AutoEventWireup="true" CodeFile="60DataList_Edit.aspx.cs" Inherits="_60DataList_Edit" %>

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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ScoresConnectionString1 %>" 
        SelectCommand="SELECT * FROM [StudentScores]"
         UpdateCommand="update [StudentScores] set Chinese=@Chinese, English=@English, Mathematics=@Mathematics where StudentNo=@StudentNo"
         DeleteCommand="delete from [StudentScores] where StudentNo=@StudentNo">
        <UpdateParameters>
            <asp:Parameter Name="Chinese" Type="Int32" />
            <asp:Parameter Name="English" Type="Int32" />
            <asp:Parameter Name="Mathematics" Type="Int32" />
            <asp:Parameter Name="StudentNo" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="StudentNo" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
        <asp:DataList ID="myData" runat="server" DataKeyField="StudentNo" DataSourceID="SqlDataSource1"
             RepeatColumns="4" RepeatDirection="Vertical" OnItemCommand="myData_ItemCommand" OnEditCommand="myData_EditCommand"
             OnCancelCommand="myData_CancelCommand" OnUpdateCommand="myData_UpdateCommand" OnDeleteCommand="myData_DeleteCommand">
            <SelectedItemTemplate>
                <%--<asp:Button ID="Button1" runat="server" Text="取消" CommandName="Back" />--%>
               <table class="table1">
                   <tr>
                       
                        <td colspan="2">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Back">取消</asp:LinkButton>
                        </td>
                       
                    </tr>
                    <tr>
                       
                        <td>國文：</td>
                        <td><%#Eval("Chinese") %></td>
                    </tr>
                   <tr>
                       
                        <td>英文：</td>
                        <td><%#Eval("English") %></td>
                    </tr>
                   <tr>
                       
                        <td>數學：</td>
                        <td><%#Eval("Mathematics") %></td>
                    </tr>
                  
                </table>

            </SelectedItemTemplate>
                       
            <SeparatorTemplate>
                
            </SeparatorTemplate>

            <HeaderTemplate>
                <h1>成績單</h1>
            </HeaderTemplate>
            <FooterTemplate>
                <h5>製表人:廖德華</h5>
            </FooterTemplate>
            <EditItemTemplate>
                <table class="table1">
                   <tr>
                        <td>編輯：</td>
                        <td colspan="3">
                            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Update">更新</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">取消</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Delete">刪除</asp:LinkButton>
                        </td>
                      
                    </tr>
                    <tr>
                        <td>學號：</td>
                        <td>
                            <asp:Label ID="lblStuNo" runat="server" Text='<%#Eval("StudentNo") %>'></asp:Label>
                         
                           
                            </td>
                        <td>國文：</td>
                        <td>
                            <asp:TextBox ID="txtChinese" runat="server" Width="40" Text='<%#Eval("Chinese") %>'></asp:TextBox>
                            </td>
                    </tr>
                   <tr>
                        <td>姓名：</td>
                        <td><%#Eval("Name") %></td>
                        <td>英文：</td>
                        <td>
                            <asp:TextBox ID="txtEnglish" runat="server" Width="40" Text=' <%#Eval("English") %>'></asp:TextBox>
                           </td>
                    </tr>
                   <tr>
                        <td>班級：</td>
                        <td><%#Eval("Class") %></td>
                        <td>數學：</td>
                        <td>
                            <asp:TextBox ID="txtMathematics" runat="server" Width="40" Text='<%#Eval("Mathematics") %>'></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td colspan="3"><%#Eval("Address") %></td>
                     
                    </tr>
                </table>


            </EditItemTemplate>

             <ItemTemplate>
               <%--  <asp:Button ID="Button1" runat="server" Text="看成績" CommandName="Select" />--%>
               <table class="table1">
                   <tr>
                        <td>編輯：</td>
                        <td colspan="3">
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Edit">修改</asp:LinkButton>
                        </td>
                      
                    </tr>
                    <tr>
                        <td>學號：</td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="Select"><%#Eval("StudentNo") %></asp:LinkButton>
                           
                            </td>
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
