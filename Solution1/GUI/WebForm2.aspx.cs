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
    public partial class WebForm2 : System.Web.UI.Page
    {

        Lop_Xl xl = new Lop_Xl();
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienthi();
            }

        }
        public void hienthi()
        {
            //using (var dataContext = new DataClasses1DataContext())
            //{
            //    //bind to Country COde droplist
            //    DropDownList1.DataSource = from p in dataContext.tlb_nganhs
            //                               orderby p.ma_nganh
            //                               select new { p.ma_nganh, p.ten_nganh };
            //    DropDownList1.DataTextField = "ten_nganh";
            //    DropDownList1.DataValueField = "ma_nganh";
            //    DropDownList1.DataBind();
            //}
            //var query = (from s in db.tlb_lops
            //             join c in db.tlb_nganhs on s.MaLop equals c.ma_nganh

            ////             select new
            ////             {
            ////                 s.MaLop,
            ////                 s.Tenlop,
            ////                 c.ten_nganh,

            ////             }).OrderBy(x => x.MaLop);

            ////dgvdiemhk1.DataSource = query;
            //dgvdiemhk1.DataBind();
            var query = (from s in db.tlb_lops
                         join c in db.tlb_nganhs on s.MaLop equals c.ma_nganh

                         select new
                         {
                             s.MaLop,
                             s.Tenlop,
                             c.ma_nganh,

                         });


            GridView1.DataSource = query;
            GridView1.DataBind();



            TextBox2.Text.ToString().Trim();
            TextBox1.Text.ToString().Trim();



        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            bool kq = xl.them_lop(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.Value);


            

            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                string scr = "swal('Thông báo',' Vui lòng điền đầy đủ thông tin!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }
            else if (kq== true)
            {
                string scr = "swal('Thông báo','thêm thành công','success');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);

                hienthi();


            }
            else
            {
                string scr = "swal('Thông báo',' thêm ko thành công!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }

        }

        protected void dgvdiemhk1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}