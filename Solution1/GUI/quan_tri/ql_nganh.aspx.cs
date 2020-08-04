using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XuLy;
using ClassLibrary1;
using System.Web.ApplicationServices;

namespace GUI.quan_tri
{
    public partial class ql_nganh : System.Web.UI.Page
    {

        Lop_Xl xl = new Lop_Xl();
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
             if(!IsPostBack)
                {
                    hienthi();
                }    
            


        }
        public void hienthi()
        {
            using (var dataContext = new DataClasses1DataContext())
            {
                //bind to Country COde droplist
                DropDownList1.DataSource = from p in dataContext.tlb_bomons
                                           orderby p.ma_bm
                                           select new { p.ma_bm, p.ten_bn };
                DropDownList1.DataTextField = "ten_bn";
                DropDownList1.DataValueField = "ma_bm";
                DropDownList1.DataBind();
            }
            var query = (from s in db.tlb_nganhs
                         join c in db.tlb_bomons on s.ma_bm equals c.ma_bm

                         select new
                         {
                             s.ma_nganh,
                             s.ten_nganh,
                             c.ten_bn,

                         }).OrderBy(x => x.ma_nganh);

            dgvdiemhk1.DataSource = query;
            dgvdiemhk1.DataBind();

            TextBox2.Text.ToString().Trim();
            TextBox1.Text.ToString().Trim();


        }

       

 
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Enabled = true;
            TextBox2.Text = null;
            TextBox1.Text = null;
        }
        
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            bool kq = xl.them_nganh(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.Value);
            
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                string scr = "swal('Thông báo',' Vui lòng điền đầy đủ thông tin!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }
            else if (kq)
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

            TextBox2.Text = null;
            TextBox1.Text = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            bool kq = xl.xoa_nganh(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.Value);


          
           if (kq)
            {
                string scr = "swal('Thông báo','xóa thành công','success');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);

                hienthi();


            }
            else
            {
                string scr = "swal('Thông báo',' xóa không thành công!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }

            TextBox1.Text = null;
            TextBox2.Text = null;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            bool kq = xl.update_nganh(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.Value);
          


            if (kq)
            {
                string scr = "swal('Thông báo','cập nhật thành công','success');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);

                hienthi();


            }
            else
            {
                string scr = "swal('Thông báo',' cập nhật không thành công!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }

            TextBox1.Text = null;
            TextBox2.Text = null;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

          dgvdiemhk1.DataSource = null;
          dgvdiemhk1.DataSource = xl.Search_nganh(TextBox5.Text);
          dgvdiemhk1.DataBind();
        }

        protected void dgvdiemhk1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = dgvdiemhk1.SelectedRow;
           // GridViewRow gr = dgvdiemhk1.SelectedRow;
            //if (txtms.Text != "" || txtten.Text != "" || txtngaysinh.Text != "" || txtgioitinh.Text != "" || txtmalop.Text != "" || txtcvht.Text != "" || txtdc.Text != "")
            TextBox1.Text = gr.Cells[0].Text;
            TextBox2.Text = HttpUtility.HtmlDecode(gr.Cells[1].Text);
            string ma=xl.timBm_by_ten(HttpUtility.HtmlDecode(gr.Cells[2].Text));         
            DropDownList1.SelectedValue = ma;

        }

      
    }
}