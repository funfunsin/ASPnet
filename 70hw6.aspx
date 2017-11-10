<%@ Page Title="" Language="C#" MasterPageFile="~/hw6.master" AutoEventWireup="true" CodeFile="70hw6.aspx.cs" Inherits="_70hw6" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #ContentPlaceHolder1_GridView1 th {
            text-align: center;
            background-color: #373636;
            color: white;
        }

        #ContentPlaceHolder1_GridView1 tr:last-child {
            /*text-align: center;*/
            background-color: #373636;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-striped" PagerStyle-HorizontalAlign="Center"
        AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" AllowPaging="true" PageSize="2">
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="商品編號" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="Product_ID" ItemStyle-Width="80px"></asp:BoundField>
            <asp:BoundField DataField="Product_Name" HeaderText="品名" SortExpression="Product_Name" ItemStyle-VerticalAlign="Middle" />
            <asp:TemplateField HeaderText="商品圖片" SortExpression="Img" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Img") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <img src='/ProductsImg/s<%# Eval("Img") %>.jpg' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="定價" SortExpression="Product_Price" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Product_Price") %>' Width="80px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Product_Price","{0:C0}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="售價" SortExpression="Product_Price2" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Product_Price2") %>' Width="80px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Product_Price2","{0:C0}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品描述" SortExpression="Product_Intro" ItemStyle-VerticalAlign="Middle">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" TextMode="MultiLine" Rows="4" Width="300px" runat="server" Text='<%# Bind("Product_Intro") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Intro").ToString().Replace("\n","<br />") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Product_Status" HeaderText="上架狀態" SortExpression="Product_Status" ItemStyle-Width="80px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <ItemStyle Width="80px"></ItemStyle>
            </asp:CheckBoxField>
            <asp:CommandField HeaderText="管理" ShowDeleteButton="True" ShowEditButton="True" ItemStyle-Width="80px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <ItemStyle Width="80px"></ItemStyle>
            </asp:CommandField>
        </Columns>

    </asp:GridView>
</asp:Content>

