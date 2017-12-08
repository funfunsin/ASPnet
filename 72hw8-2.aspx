<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="72hw8-2.aspx.cs" Inherits="_72hw8_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] where Product_ID=@Product_ID">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product_ID" QueryStringField="PID" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="width: 100%;height:500px">
                <tr>
                    <td style="width:400px;text-align:right">
                        <img src='ProductsImg/<%# Eval("Img") %>.jpg' />
                    </td>
                    <td>
                        <asp:Label ID="Product_NameLabel" Font-Size="24pt" Font-Names="微軟正黑體" Font-Bold="true" runat="server" Text='<%# Eval("Product_Name") %>' /><br /><br />
                        <asp:Label ID="Label1" Font-Bold="true" Font-Size="14pt" runat="server" Text='<%# Eval("Product_Intro").ToString().Replace("\n","<br>") %>' /><br /><br />
                        原價:<asp:Label ID="Label2" Font-Size="12pt"  ForeColor="#cccccc" runat="server" Text='<%# Eval("Product_Price","{0:C0}") %>' style="text-decoration:line-through" /><br />
                        <asp:Panel ID="Panel1" runat="server" Font-Names="Arial Black" HorizontalAlign="Right" Font-Size="36pt" ForeColor="#ff0066"><%# Eval("Product_Price2","{0:C0}") %></asp:Panel>
                    </td>
                   
                </tr>
               <tr>
                   <td colspan="2">
                       <a href="71hw8.aspx" class="btn btn-link">上一頁</a>
                   </td>
               </tr>
            </table>

        </ItemTemplate>

    </asp:Repeater>

</asp:Content>

