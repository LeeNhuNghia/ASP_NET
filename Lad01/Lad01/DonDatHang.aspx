<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lad01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            color: #000000;
        }
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="7" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2"><strong><span class="auto-style5">ĐƠN ĐẶT HÀNG</span></strong></td>
                </tr>
                <tr>
                    <td>Khách hàng: </td>
                    <td>
                        <asp:TextBox ID="txtKH" runat="server" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Địa chỉ: </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDiaChi" runat="server" Width="188px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mã số thuế: </td>
                    <td>
                        <asp:TextBox ID="txtMST" runat="server" Width="184px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Chọn các loại bánh sau:<br />
                        <asp:DropDownList ID="ddlBanh" runat="server" Width="90%">
                            <asp:ListItem>Hamburger</asp:ListItem>
                            <asp:ListItem>Bánh mì</asp:ListItem>
                            <asp:ListItem>Bánh su</asp:ListItem>
                            <asp:ListItem>Bánh kem</asp:ListItem>
                            <asp:ListItem>Bánh hành</asp:ListItem>
                            <asp:ListItem>Bánh pía</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp; Số lượng:
                        <asp:TextBox ID="txtSL" runat="server"></asp:TextBox>
                        (cái)<br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnChon" runat="server" Text="&gt;" Font-Bold="True" OnClick="btnChon_Click" Width="60px" />
                        <br />
                        <asp:Label ID="lbLoi" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        Danh sách các bánh được đặt:<br />
                        <asp:ListBox ID="lstBanh" runat="server" Width="85%" Height="150px" SelectionMode="Multiple">

                        </asp:ListBox>
                        <asp:ImageButton ID="imbXoa" runat="server" ImageUrl="~/img/delete.jfif" Width="30px" OnClick="imbXoa_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="btnIn" runat="server" Text="In đơn đặt hàng" Width="95px" OnClick="btnIn_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbThongTin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
