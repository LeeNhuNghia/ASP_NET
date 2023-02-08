using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lad01
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h3>THÔNG TIN VỀ BẠN</h3>";
            kq += "<ul>";

            kq += "<li>Tên: " + txtTen.Text + "</li>";
            if (rdtNam.Checked)
            {
                kq += "<li>Giới tính: Nam </li>";
            }
            else
            {
                kq += "<li>Giới tính: Nữ </li>";
            }
            
            if(chkAnhVan.Checked)
            {
                kq += "<li>Ngoại ngữ: Anh văn </li>";
            }
            if(chkPhapVan.Checked)
            {
                kq += "<li>Ngoại ngữ: Pháp văn </li>";
            }
            if (rdtThunhapA.Checked)
            {
                kq += "<li>Mức thu nhập: Dưới 5 triệu</li>";
            }
            else if (rdtThunhapB.Checked)
            {
                kq += "<li>Mức thu nhập: Từ 5-10 triệu</li>";
            }
            else
            {
                kq += "<li>Mức thu nhập: Trên 10 triệu</li>";
            }
            kq += "<li>Trình độ: " + rdtlTrinhDo.SelectedItem.Text + "</li>";

            kq += "</ul>";

            lbThongtin.Text = kq;
        }
    }
}