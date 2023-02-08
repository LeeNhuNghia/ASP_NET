using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lad01
{
    public partial class Calendard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lbToday.Text = "Hôm nay ngày: " + DateTime.Today.ToString("dd/MM/yyyy");
            }    
        }

        protected void clNgaySinhNhat_SelectionChanged(object sender, EventArgs e)
        {
            //nhập ngày sinh nhật của người được chọn
            string ketqua = "";
            DateTime ngaysinhnhat = clNgaySinhNhat.SelectedDate;
            if(ngaysinhnhat < DateTime.Today)
            {
                ketqua = string.Format("Sinh nhật của bạn đã qua <b>{0}</b> ngày", DateTime.Today.Subtract(ngaysinhnhat).Days);
            }    
            else if(ngaysinhnhat > DateTime.Today)
            {
                ketqua = string.Format("Còn {0} ngày nữa mới đến sinh nhật bạn", ngaysinhnhat.Subtract(DateTime.Today).Days);
            }
            else
            {
                ketqua = "<h2>CHÚC MỪNG SINH NHẬT BẠN</h2>";
            }
            //gửi kết quả thong báo về client
            lbThongbao.Text = ketqua;
        }
    }
}