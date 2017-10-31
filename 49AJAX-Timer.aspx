<%@ Page Language="C#" AutoEventWireup="true" CodeFile="49AJAX-Timer.aspx.cs" Inherits="_49AJAX_Timer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                目前時間:<asp:Label ID="Label2" runat="server" Text='<%# DateTime.Now %>'></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />

       <%--   <asp:UpdatePanel ID="UpdatePanel2" runat="server">

            <ContentTemplate>
                <asp:Timer ID="Timer2" runat="server" Interval="200" OnTick="Timer2_Tick"></asp:Timer>
               <asp:Label ID="Label1" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>--%>

        <hr />
         <asp:UpdatePanel ID="UpdatePanel3" runat="server">

            <ContentTemplate>
                <asp:Timer ID="Timer3" runat="server" Interval="2000" OnTick="Timer3_Tick"></asp:Timer>
               <asp:Label ID="Label3" runat="server" ></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </div>
    </form>
</body>
</html>
