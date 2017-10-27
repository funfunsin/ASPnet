<%@ Page Language="C#" AutoEventWireup="true" CodeFile="28GridView_Search.aspx.cs" Inherits="_27GridView_DefaultEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            國文成績:<asp:TextBox ID="txtChinese" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="送出" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>"
                SelectCommand="SELECT * FROM [StudentScores] where Chinese>=@Chinese ">
                <%--參數是要傳給SelectCommand的 因此選擇SelectParameters--%>
                <SelectParameters>
                    <%--因為參數是從控制項(textbox)來的--%>
                    <asp:ControlParameter ControlID="txtChinese" Name="Chinese" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="StudentNo">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
            </asp:GridView>

            <hr />


            <asp:DropDownList ID="ddlChinese" runat="server" AutoPostBack="true">
                <asp:ListItem Text="90"></asp:ListItem>
                <asp:ListItem Text="80"></asp:ListItem>
                <asp:ListItem Text="70"></asp:ListItem>
            </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>"
                SelectCommand="SELECT * FROM [StudentScores]" 
                FilterExpression=" Chinese>={0}">
                <%--Chinese>={0}要大於等於回傳進來的第一個索引值--%>
                <FilterParameters>
                    <asp:ControlParameter ControlID="ddlChinese" Name="Chinese" Type="Int32" />
                </FilterParameters>

            </asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="StudentNo">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
            </asp:GridView>

            
            <hr />

            國文成績:<asp:TextBox ID="txtChinese2" runat="server"></asp:TextBox>
            英文成績:<asp:TextBox ID="txtEnglish" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="送出" />

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
                SelectCommand="SELECT * FROM [StudentScores]" FilterExpression="Chinese>={0} and English>={1}">
                <FilterParameters>
                    <asp:ControlParameter ControlID="txtChinese2" Name="Chinese" Type="Int32" />
                    <asp:ControlParameter ControlID="txtEnglish" Name="English" Type="Int32" />
                </FilterParameters>

            </asp:SqlDataSource>

            <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource3"></asp:GridView>

        </div>

    </form>
</body>
</html>
