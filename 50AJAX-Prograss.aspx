<%@ Page Language="C#" AutoEventWireup="true" CodeFile="50AJAX-Prograss.aspx.cs" Inherits="_50AJAX_Prograss" %>

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

                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
               到站時間:<asp:Label ID="Label1" runat="server" Text='<%# DateTime.Now %>'></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <img src="Progress.gif" />執行中請稍候...
            </ProgressTemplate>
        </asp:UpdateProgress>
        <hr />

         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>

                <asp:Button ID="Button2" runat="server" Text="播放音樂" OnClick="Button2_Click"/>
               
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
            <ProgressTemplate>
                <img src="Progress.gif" />音樂下載中,請稍候...
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
