using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XuLy;

namespace GUI.quan_tri
{
    public partial class ql_bm : System.Web.UI.Page
    {
        
        Lop_Xl xl = new Lop_Xl();  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienthi();
              
            }
            

        }

        public void hienthi()
        {
            dgvdiemhk1.DataSource = xl.hienthibm();
            dgvdiemhk1.DataBind();

            TextBox1.Text.ToString().Trim();
            TextBox2.Text.ToString().Trim();
            TextBox1.Text = null;
            TextBox2.Text = null;

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            bool kt;
            kt = xl.thembm(TextBox1.Text, TextBox2.Text);
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                string scr = "swal('Thông báo',' Vui lòng điền đầy đủ thông tin!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }
            else if (kt)
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

            TextBox1.Text = null;
            TextBox2.Text = null;


        }

      

        protected void dgvdiemhk1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = dgvdiemhk1.SelectedRow;
            //if (txtms.Text != "" || txtten.Text != "" || txtngaysinh.Text != "" || txtgioitinh.Text != "" || txtmalop.Text != "" || txtcvht.Text != "" || txtdc.Text != "")
            TextBox1.Text = gr.Cells[0].Text;
            TextBox2.Text = HttpUtility.HtmlDecode(gr.Cells[1].Text);

            TextBox1.Enabled = false;
         


        }





        protected void Button4_Click(object sender, EventArgs e)
        {

            bool kt;
            kt = xl.updatebm(TextBox1.Text, TextBox2.Text);
            if (kt)
            {
                string scr = "swal('Thông báo','sửa thành công','success');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);

                hienthi();


            }
            else
            {
                string scr = "swal('Thông báo',' sửa không thành công!!','error');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "tt", scr, true);
            }

            TextBox1.Text = null;
            TextBox2.Text = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            bool kt;
            kt = xl.deletebm(TextBox1.Text, TextBox2.Text);
           
           if (kt)
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

        protected void Button1_Click(object sender, EventArgs e)
        {

            TextBox1.Enabled = true;
            TextBox1.Text = null;
            TextBox2.Text = null;

        }

       

       
            protected void Button5_Click(object sender, EventArgs e)
            {

                dgvdiemhk1.DataSource = null;
                dgvdiemhk1.DataSource = xl.Search(TextBox3.Text).ToList();
                dgvdiemhk1.DataBind();
            }

    
    }
}