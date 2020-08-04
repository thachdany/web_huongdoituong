using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;
using XuLy; 
namespace GUI
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        Lop_Xl xl = new Lop_Xl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void login(object sender, EventArgs e)
        {

            if (xl.Login(txttentk.Text, txtmk.Text) != null)
            {


                var tk = xl.Login(txttentk.Text, txtmk.Text);
                Session["tentk"] = txttentk.Text;
                Session["quyen"] = tk.quyen;
                DataClasses1DataContext db = new DataClasses1DataContext();
                var svv = xl.timten(txttentk.Text);
                Session["ten"] = svv.TenSV;
                string scr = "swal('Thông báo','Đăng nhập thành công','success');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
                string a = "$(document).ready(function(){$('.swal-button.swal-button--confirm').click(function(){window.location.href='trangchu.aspx';});});";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "click", a, true);


            }
            else
            {
                string scr = "swal('Thông báo','Đăng nhập thất bại','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
                string scr2 = "$(document).ready(function(){$('.swal-button.swal-button--confirm').click(function(){window.location.href='dangnhap.aspx';});});";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "click", scr2, true);
            }
        }
    }
}