using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lad01
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnxuly_Click(object sender, EventArgs e)
        {
            if (FUpload.HasFile) //người dùng có Upload File
            {
                //Lấy đường dẫn để lưu trữ trên Server
                string path = Server.MapPath("~/Uploads/") + FUpload.FileName;
                //Thực hiện Upload
                FUpload.SaveAs(path);
                lbThongbao.Text = "Upload thành công!";
            }
            else
            {
                lbThongbao.Text = "Upload không thành công!";
            }
        }
    }
}