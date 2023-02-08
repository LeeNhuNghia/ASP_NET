using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lad01
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) //trang load lần đầu
            {
                for(int i = 1; i<=50; i++)
                {
                    blNghenghiep.Items.Add("Nghề " + i);
                }
            }
            else //Khi trang được load lại(PostBach
            {
                //Xử lý ẩn hiện của plSoThich, plNghenghiep theo trạng thái của chkSoThich, chkNgheNghiep
                plSothich.Visible = chkSothich.Checked;
                plNghenghiep.Visible = chkNghenghiep.Checked;
            }
        }
    }
}