<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GUI.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
p{margin:0 0 10px}h2,h3,p{orphans:3;widows:3}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}.form-group{margin-bottom:15px}.h3,h3{font-size:24px}.h1,.h2,.h3,h1,h2,h3{margin-top:20px;margin-bottom:10px}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h2,h3{page-break-after:avoid}button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}input{line-height:normal}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button,select{text-transform:none}button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}.btn-success{color:#fff;background-color:#5cb85c;border-color:#4cae4c}.table{width:100%;max-width:100%;margin-bottom:20px}.table{border-collapse:collapse!important}table{background-color:transparent}table{border-collapse:collapse;border-spacing:0}.text-center{text-align:center}th{text-align:left}td,th{padding:0}
        .auto-style1 {
            color: White;
            font-weight: bold;
            background-color: #507CD1;
        }
        .auto-style2 {
            background-color: #EFF3FB;
        }
        .auto-style3 {
            background-color: White;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


    <p>
        <br />
    </p>
    <div >
        </div>
           
           
                    <br />
                </div>
                <br />
    <div >
        </div>
           
            <div class="form-group">
                <div class="form-group">
                     <br />
   <center>
    <h3>QUẢN LÝ LỚP</h3>
                <br />
       </center>
                <asp:Label ID="Label6" runat="server" Text="Mã Lớp"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" placeholder="Nhập mã lớp" Width="249px"></asp:TextBox>
                <br />
                <br />
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Tên Lớp"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" placeholder="Nhập tên lớp" Width="242px" style="margin-top: 0"></asp:TextBox>
                     <br />
                </div>

                 <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Tên Ngành"></asp:Label>
                     
                     <asp:DropDownList ID="DropDownList1" runat="server">
                     </asp:DropDownList>
                     
                     <br />
                </div>
                <p>&nbsp;</p>
     
    <div >
        </div>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thêm" CssClass="btn-success" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" CssClass="btn-success"  style="height: 26px"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Sửa" CssClass="btn-success" />
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
         <div class="table table-hover" style="text-align: center">
             <br />
        

        </center>

       
          <asp:GridView ID="dgvdiemhk1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="1160px" Height="164px" style="text-align:center"  EnableModelValidation="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Malop" HeaderText="Mã Lớp"  HeaderStyle-CssClass="text-center" >
<HeaderStyle CssClass="text-center"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Tenlop" HeaderText=" Tên Lớp"  HeaderStyle-CssClass="text-center">        
<HeaderStyle CssClass="text-center"></HeaderStyle>
            </asp:BoundField>
              <asp:BoundField DataField="ten_nganh" HeaderText=" Tên Ngành"  HeaderStyle-CssClass="text-center">        
          
<HeaderStyle CssClass="text-center"></HeaderStyle>
            </asp:BoundField>
          
            <asp:CommandField ShowSelectButton="True" ControlStyle-Width="25px" ControlStyle-Height="25px" ButtonType="Image" SelectImageUrl="~/img/edit.png" >
<ControlStyle Height="25px" Width="25px"></ControlStyle>
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               
     
    </asp:GridView>

    </div>

                     <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>

                     <br />
                     
                    <br />
                </div>
            </div>
        </form>
    </div>
            </div>
        </form>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;<br />&nbsp;<br />
    </div>
        

        </div>
    </form>
</body>
</html>
