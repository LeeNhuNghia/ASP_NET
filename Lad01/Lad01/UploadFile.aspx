<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="Lad01.UploadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            text-align: center;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style2"><strong>MINH HỌA UPLOAD FILE</strong></td>
                </tr>
                <tr>
                    <td>Chọn tập tin:</td>
                    <td>
                        <asp:FileUpload ID="FUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnxuly" runat="server" Text="Upload" Width="97px" OnClick="btnxuly_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbThongbao" ForeColor="#cc0000" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
