<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUpload.aspx.cs" Inherits="Lad01.ViewUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 0 auto; width:700px; border: 2px solid #75046f">
            <div style="background-color: #75046f ; text-align:center;">
                <asp:LinkButton ID="lbtUpload" runat="server" ForeColor="#ffffff" OnClick="lbtUpload_Click">Upload tập tin</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtXemUpload" runat="server" ForeColor="#ffffff" OnClick="lbtXemUpload_Click">Xem các tập tin đã được Upload</asp:LinkButton>
            </div>
            <asp:MultiView ID="mtvUploadXemUpload" runat="server">
                
                <asp:View ID="vUpload" runat="server">
                    <div style="text-align: center;">
                        Chọn tập tin: <asp:FileUpload ID="FUpload" runat="server" /><br />
                        <asp:Label ID="lbThongbao" Font-Bold="true" ForeColor="#cc0000" runat="server" Text=""></asp:Label><br />
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </div>
                </asp:View>
                
                <asp:View ID="View2" runat="server">
                    <div style="padding: 10px;">
                        <asp:ListBox ID="lstFile" runat="server" Rows="5" Width="100%"></asp:ListBox>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
