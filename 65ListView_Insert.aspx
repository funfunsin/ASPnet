<%@ Page Language="C#" AutoEventWireup="true" CodeFile="65ListView_Insert.aspx.cs" Inherits="_65ListView_Insert" %>

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
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ScoresConnectionString1 %>" 
            SelectCommand="SELECT * FROM [StudentScores]"
         InsertCommand="insert into StudentScores values(@Name,@StudentNo,@Address,@Chinese,@English,@Mathematics,@Class)"
         UpdateCommand="update [StudentScores] set Chinese=@Chinese, English=@English, Mathematics=@Mathematics where StudentNo=@StudentNo"
         DeleteCommand="delete from [StudentScores] where StudentNo=@StudentNo"
        ></asp:SqlDataSource>
        
        
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="StudentNo" InsertItemPosition="FirstItem" OnItemCommand="ListView2_ItemCommand">
            
            <SelectedItemTemplate>
                <asp:Button ID="Button6" runat="server" Text="返回" CommandName="Back" />
                This is SelectedItemTemplate!
            </SelectedItemTemplate>
            


            
            <InsertItemTemplate>
                <table id="insertTable" class="table1">
                   <tr>
                        <td>執行：</td>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="寫入" CommandName="Insert" />
                            <%--<asp:Button ID="Button2" runat="server" Text="取消" CommandName="Cancel" />--%>
                            <input id="btnCancel" type="button" value="取消" />
                        </td>
                      
                    </tr>
                    <tr>
                        <td>學號：</td>
                        <td>
               <asp:TextBox ID="StudentNoTextBox" runat="server" Text='<%# Bind("StudentNo") %>' />
                            
                            </td>
                        <td>國文：</td>
                        <td><asp:TextBox ID="ChineseTextBox" Width="50" runat="server" Text='<%# Bind("Chinese") %>' /></td>
                    </tr>
                   <tr>
                        <td>姓名：</td>
                        <td><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /></td>
                        <td>英文：</td>
                        <td><asp:TextBox ID="EnglishTextBox" Width="50" runat="server" Text='<%# Bind("English") %>' /></td>
                    </tr>
                   <tr>
                        <td>班級：</td>
                        <td><asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' /></td>
                        <td>數學：</td>
                        <td><asp:TextBox ID="MathematicsTextBox" Width="50" runat="server" Text='<%# Bind("Mathematics") %>' /></td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td colspan="3"><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /></td>
                     
                    </tr>
                </table>

            </InsertItemTemplate>

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
                            <asp:TextBox ID="txtChinese" runat="server" Width="40" Text='<%#Bind("Chinese") %>'></asp:TextBox>
                            </td>
                    </tr>
                   <tr>
                        <td>姓名：</td>
                        <td><%#Eval("Name") %></td>
                        <td>英文：</td>
                        <td>
                            <asp:TextBox ID="txtEnglish" runat="server" Width="40" Text=' <%#Bind("English") %>'></asp:TextBox>
                           </td>
                    </tr>
                   <tr>
                        <td>班級：</td>
                        <td><%#Eval("Class") %></td>
                        <td>數學：</td>
                        <td>
                            <asp:TextBox ID="txtMathematics" runat="server" Width="40" Text='<%#Bind("Mathematics") %>'></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td colspan="3"><%#Eval("Address") %></td>
                     
                    </tr>
                </table>
            </EditItemTemplate>

            <LayoutTemplate>
                
                <table id="myData">
                    <caption>成績單</caption>
                    <tr>
                        <td><input id="Button50" type="button" value="新增資料" />
                            
                        </td>
                    </tr>
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
                    
                        <td colspan="4"> <asp:Button ID="Button5" runat="server" Text="選擇" CommandName="Select" />
 <asp:Button ID="Button7" runat="server" Text="修改" CommandName="Edit" />


                        </td>
                    
                    </tr>
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
    </div>
    </form>

    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script>
        $('#insertTable').hide();
        $('#Button50').click(function () {
            $('#insertTable').show(1000);
        });
        $('#btnCancel').click(function () {
            $('#insertTable').hide(1000);
        });
    </script>


</body>
</html>
