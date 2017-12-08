﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="37DetailsView_Data.aspx.cs" Inherits="_37DetailsView_Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" SelectCommand="SELECT * FROM [StudentScores]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" DataKeyNames="StudentNo" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
              
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Columns>
        </asp:GridView>
        <hr />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScoresConnectionString %>" 
            SelectCommand="SELECT * FROM [StudentScores] where StudentNo=@StudentNo"
             UpdateCommand="update [StudentScores] set Name=@Name, Address=@Address,Chinese=@Chinese,English=@English,Mathematics=@Mathematics,Class=@Class where StudentNo=@StudentNo"
            DeleteCommand="delete from [StudentScores] where StudentNo=@StudentNo"
            InsertCommand="insert into StudentScores values(@Name,@StudentNo,@Address,@Chinese,@English,@Mathematics,@Class)"
            >
            <SelectParameters>
                <asp:ControlParameter Name="StudentNo" ControlID="GridView1" Type="String" />

            </SelectParameters>

        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" OnItemInserted="DetailsView1_ItemInserted"  OnItemUpdated="DetailsView1_ItemUpdated" OnItemDeleted="DetailsView1_ItemDeleted" runat="server" Height="50px" Width="198px" AutoGenerateRows="False" DataKeyNames="StudentNo" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true" AutoGenerateInsertButton="true">
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StudentNo" HeaderText="StudentNo" ReadOnly="True" SortExpression="StudentNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Chinese" HeaderText="Chinese" SortExpression="Chinese" />
                <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                <asp:BoundField DataField="Mathematics" HeaderText="Mathematics" SortExpression="Mathematics" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            </Fields>
        </asp:DetailsView>


    </div>
    </form>
</body>
</html>
