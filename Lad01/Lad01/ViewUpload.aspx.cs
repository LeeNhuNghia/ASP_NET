using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Lad01
{
    public partial class ViewUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtXemUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 1;
        }

        protected void lbtUpload_Click(object sender, EventArgs e)
        {
            mtvUploadXemUpload.ActiveViewIndex = 0;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FUpload.HasFile) //người dùng có Upload File
            {
                //Lấy đường dẫn để lưu trữ trên Server
                string path = Server.MapPath("~/Uploads/") + FUpload.FileName;
                //Thực hiện Upload
                FUpload.SaveAs(path);
                lbThongbao.Text = "Upload thành công!";
                //Xuất all các tập tin đã đc Upload ra ddieuf khiển lisFile
                DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/Uploads"));
                //lấy danh sách các tập tin trong thư mục
                FileInfo[] fis = dir.GetFiles();
                lstFile.Items.Clear(); //Xóa all các mục trong lstFile
                //duyệt qua các tập tin và thêm vào điều kiển lstFile trong View2
                foreach(FileInfo f in fis)
                {
                    lstFile.Items.Add(f.Name);
                }    

            }
            else
            {
                lbThongbao.Text = "Upload không thành công!";
            }
        }
    }
}