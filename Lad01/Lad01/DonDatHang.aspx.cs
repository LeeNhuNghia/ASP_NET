using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lad01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChon_Click(object sender, EventArgs e)
        {
            if(txtSL.Text == "")
            {
                lbLoi.Text = "Số lượng không hợp lệ!";
                return;
            }
            lbLoi.Text = "";
            lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSL.Text + ")");
        }

        protected void imbXoa_Click(object sender, ImageClickEventArgs e)
        {
            //duyệt ngược mảng
            for(int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                //nếu phát hiện ptu i nào được chọn thì xóa
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string ketqua = "";
            ketqua += "<h2> HÓA ĐƠN ĐẶT HÀNG</h2>";

            //lấy thông tin khách hàng
            ketqua += "Khách hàng: <i>" + txtKH.Text + "</i><br>";
            ketqua += "Địa chỉ: <i>" + txtDiaChi.Text + "</i><br>";
            ketqua += "Mã số thuế: <i>" + txtMST.Text + "</i><br>";
            //lấy thông tin bánh đặt
            ketqua += "<h3>Đặt các loại bánh sau: </h3>";
            ketqua += "<table border =1 width = 100%>";
            char[] strSep = { '(', ')' };
            foreach(ListItem x in lstBanh.Items)
            {
                string[] strArr = x.Text.Split(strSep);
                ketqua += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", strArr[0], strArr[1]);
            }
            ketqua += "<table>";
            //gửi thông ti n vè cho người dùng
            lbThongTin.Text = ketqua;
        }
    }
}