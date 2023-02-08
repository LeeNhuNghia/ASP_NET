<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="Lad01.ThongTinCaNhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 189px;
        }
        .auto-style4 {
            width: 189px;
            height: 29px;
            text-align: right;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            width: 189px;
            text-align: right;
        }
        .auto-style7 {
            width: 189px;
            text-align: right;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>THÔNG TIN CÁ NHÂN</strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Họ và tên:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtTen" runat="server" Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Giới tính:</strong></td>
                <td class="auto-style5">
                    <asp:RadioButton ID="rdtNam" runat="server" text="Nam" GroupName="Gioitinh" Checked="true"/>
                    <asp:RadioButton ID="rdtNu" runat="server" text="Nữ" GroupName="Gioitinh"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Ngoại ngữ:</strong></td>
                <td>
                    <asp:CheckBox ID="chkAnhVan" runat="server" Text="Anh văn" />
                    <asp:CheckBox ID="chkPhapVan" runat="server" Text="Pháp văn" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Thu nhập:</strong></td>
                <td>
                    <asp:RadioButton ID="rdtThunhapA" runat="server" GroupName="Thunhap" text="Dưới 5 triệu"/>
                    <asp:RadioButton ID="rdtThunhapB" runat="server" GroupName="Thunhap" text="Từ 5-10 triệu" Checked="true"/>
                    <asp:RadioButton ID="rdtThunhapC" runat="server" GroupName="Thunhap" text="Trên 10 triệu"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Trình độ:</strong></td>
                <td>

                    <asp:RadioButtonList ID="rdtlTrinhDo" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Sau đại học</asp:ListItem>
                        <asp:ListItem>Đại học</asp:ListItem>
                        <asp:ListItem Selected>Cao đẳng</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lbThongtin" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
