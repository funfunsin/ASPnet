<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="71hw8.aspx.cs" Inherits="_71hw8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
        SelectCommand="SELECT * FROM [Products] where Product_Status=1"></asp:SqlDataSource>

    <asp:DataList ID="DataList1" RepeatColumns="5" runat="server" 
        DataKeyField="Product_ID" DataSourceID="SqlDataSource1" BorderWidth="0" Width="100%"
         ItemStyle-Height="250" ItemStyle-Width="250">
        <ItemTemplate>
            <a href='72hw8-2.aspx?PID=<%# Eval("Product_ID") %>'>
            <table style="width: 95%; height:95%">
                <tr>
                    <td class="text-center">
                        <img src='ProductsImg/s<%# Eval("Img") %>.jpg' />
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Product_NameLabel" Font-Bold="true" runat="server" Text='<%# Eval("Product_Name") %>' />
                    </td>
                
                </tr>
                 <tr>
                    <td>
                        原價:<asp:Label ID="Label1" ForeColor="#cccccc" runat="server" Text='<%# Eval("Product_Price","{0:C0}") %>' style="text-decoration:line-through" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        特價:<asp:Label ID="Product_Price2Label" Font-Names="Arial Black" Font-Size="14pt" ForeColor="#ff0066" runat="server" Text='<%# Eval("Product_Price2","{0:C0}") %>' />
                    </td>
                </tr>
            </table>
            </a>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>

