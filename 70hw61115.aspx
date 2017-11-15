<%@ Page Title="" Language="C#" MasterPageFile="~/hw6.master" AutoEventWireup="true" CodeFile="70hw61115.aspx.cs" Inherits="_70hw61115" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #ContentPlaceHolder1_GridView1 th {
            text-align: center;
            background-color: #373636;
            color: white;
        }

        /*#ContentPlaceHolder1_GridView1 tr:last-child table tr{
            text-align:center;
            background-color:#373636;
            color:white;
        }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>"
        SelectCommand="SELECT * FROM [Products]"
         UpdateCommand="Update [Products] set Product_Name=@Product_Name, Product_Price=@Product_Price, Product_Price2=@Product_Price2, Product_Intro=@Product_Intro, Product_Status=@Product_Status where Product_ID=@Product_ID"
        ></asp:SqlDataSource>


    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger" runat="server" data-toggle="modal" data-target="#New_Product"><span class="glyphicon glyphicon-plus"></span>新增商品</asp:LinkButton>

    <div class="modal" id="New_Product">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="text-center">商品新增</h2>
                </div>
                <div class="modal-body">
                   <div>
                       <label for="txtProduct_ID">商品編號：</label>
                       <asp:TextBox ID="txtProduct_ID" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_ID" ID="RequiredFieldValidator5" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                       <%--<asp:RegularExpressionValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_ID" ID="RegularExpressionValidator1" runat="server" ErrorMessage="(格式錯誤)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                   </div>
                    <div>
                       <label for="txtProduct_Name">商品名稱：</label>
                        <asp:TextBox ID="txtProduct_Name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_Name" ID="RequiredFieldValidator6" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                   </div>
                    <div>
                       <label for="fulImg">商品圖式(大)：</label>
                        <asp:FileUpload ID="fulImg" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="fulImg" ID="RequiredFieldValidator7" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                   </div>
                     <div>
                       <label for="fulSimg">商品圖式(小)：</label>
                         <asp:FileUpload ID="fulSimg" runat="server" CssClass="form-control" />
                         <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="fulSimg" ID="RequiredFieldValidator8" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                   </div>
                    <div>
                       <label for="txtProduct_Price">定價：</label>
                        <asp:TextBox ID="txtProduct_Price" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_Price" ID="RequiredFieldValidator9" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                   </div>
                    <div>
                       <label for="txtProduct_Price">售價：</label>
                        <asp:TextBox ID="txtProduct_Price2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_Price" ID="RequiredFieldValidator10" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_Price2" Operator="LessThanEqual" ControlToCompare="txtProduct_Price" ID="CompareValidator1" runat="server" ErrorMessage="(不得高於定價)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                   </div>
                    <div>
                       <label for="txtProduct_Intro">商品簡介：</label>
                        <asp:TextBox ID="txtProduct_Intro" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="ValidationInsert" ControlToValidate="txtProduct_Intro" ID="RequiredFieldValidator11" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                   </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button1" runat="server" ValidationGroup="ValidationInsert" Text="新增" CssClass="btn btn-primary" />
                    <input id="Reset1" type="reset" value="取消" class="btn btn-default" data-dismiss="modal" />
                </div>


            </div>
        </div>
    </div>

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-striped" PagerStyle-HorizontalAlign="Center"
        AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" AllowPaging="True" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="商品編號" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="Product_ID" ItemStyle-Width="80px">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px"></ItemStyle>
            </asp:BoundField>
            <asp:TemplateField HeaderText="品名" SortExpression="Product_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtProduct_Name" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtProduct_Name" ID="RequiredFieldValidator1" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品圖片" SortExpression="Img" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <img src='/ProductsImg/s<%# Eval("Img") %>.jpg' width="50%" /><br />
                    <label>大圖片:</label><asp:FileUpload ID="fulImg" runat="server" Width="180" />
                    <label>小圖片:</label><asp:FileUpload ID="fulSimg" runat="server" Width="180" />
                </EditItemTemplate>
                <ItemTemplate>
                    <img src='/ProductsImg/s<%# Eval("Img") %>.jpg' />
                </ItemTemplate>
                
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="180"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="定價" SortExpression="Product_Price" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <asp:TextBox ID="txtProduct_Price" runat="server" Text='<%# Bind("Product_Price") %>' Width="80px"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtProduct_Price" ID="RequiredFieldValidator2" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Product_Price","{0:C0}") %>'></asp:Label>
                </ItemTemplate>

                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="售價" SortExpression="Product_Price2" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <EditItemTemplate>
                    <asp:TextBox ID="txtProduct_Price2" runat="server" Text='<%# Bind("Product_Price2") %>' Width="80px"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtProduct_Price2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ControlToValidate="txtProduct_Price2" Operator="LessThanEqual" ControlToCompare="txtProduct_Price" ID="CompareValidator1" runat="server" ErrorMessage="(不得高於定價)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Product_Price2","{0:C0}") %>'></asp:Label>
                </ItemTemplate>

                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品描述" SortExpression="Product_Intro" ItemStyle-VerticalAlign="Middle">
                <EditItemTemplate>
                    <asp:TextBox ID="txtProduct_Intro" TextMode="MultiLine" Rows="4" Width="300px" runat="server" Text='<%# Bind("Product_Intro") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtProduct_Intro" ID="RequiredFieldValidator4" runat="server" ErrorMessage="(必填)" Font-Size="10pt" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Intro").ToString().Replace("\n","<br />") %>'></asp:Label>
                </ItemTemplate>

                <ItemStyle VerticalAlign="Middle"></ItemStyle>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Product_Status" HeaderText="上架狀態" SortExpression="Product_Status" ItemStyle-Width="80px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <ItemStyle Width="80px"></ItemStyle>
            </asp:CheckBoxField>
            <asp:CommandField HeaderText="管理" ShowDeleteButton="True" ShowEditButton="True" ItemStyle-Width="80px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center">
                <ItemStyle Width="80px"></ItemStyle>
            </asp:CommandField>
        </Columns>

        <PagerStyle HorizontalAlign="Center"></PagerStyle>
    </asp:GridView>
</asp:Content>
