<%@ Page Language="C#" AutoEventWireup="true" CodeFile="26GridView-Paging.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .PageBtn {
            font-family:Webdings; text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="2" AutoGenerateColumns="False" DataKeyNames="StudentNo">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
                <PagerSettings Mode="NextPreviousFirstLast" PageButtonCount="2"
                    FirstPageText="第一頁"
                    LastPageText="最後一頁"
                    FirstPageImageUrl="~/first.jpg"
                    NextPageImageUrl="~/next.jpg"
                    PreviousPageImageUrl="~/prev.jpg"
                    LastPageImageUrl="~/last.jpg"
                    NextPageText="下一頁"
                    PreviousPageText="上一頁" />
                <PagerStyle HorizontalAlign="Center" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>


            <hr />


            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" OnDataBound="GridView2_DataBound" AllowPaging="True" PageSize="2" AutoGenerateColumns="False" DataKeyNames="StudentNo">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
                <PagerTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td>請選擇頁碼：
                                <asp:DropDownList ID="ddlPager" runat="server" OnSelectedIndexChanged="ddlPager_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                                <asp:LinkButton ID="lkbPrev" runat="server" CssClass="PageBtn" OnClick="lkbPrev_Click">3</asp:LinkButton>
                                <asp:LinkButton ID="lkbNext" runat="server" CssClass="PageBtn" OnClick="lkbPrev_Click">4</asp:LinkButton>

                            </td>
                            <td style="text-align:right">
                                <asp:Label ID="lblPageInfo" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </PagerTemplate>

            </asp:GridView>




        </div>
    </form>
</body>
</html>
