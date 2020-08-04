<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Site1.Master" AutoEventWireup="true" CodeBehind="ql_lopp.aspx.cs" Inherits="GUI.quan_tri.ql_lopp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
        <form>
            <div class="form-group">
                <div class="form-group">
                    <br />
                    <center>
                        <h3>QUẢN LÝ NGÀNH</h3>
                        <br />
                    </center>
                    <asp:Label ID="Label6" runat="server" Text="Mã ngành"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" placeholder="Nhập tên ngành" Width="249px"></asp:TextBox>
                    <br />
                    <br />
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Tên Ngành"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" placeholder="Nhập tên ngành" Width="242px" style="margin-top: 0"></asp:TextBox>
                        <br />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Tên Bộ Môn"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <br />
                    </div>
                    <p>
                        &nbsp;</p>
                    <div >
        <form>
            <asp:Button ID="Button1" runat="server" Text="Thêm Mới" CssClass="auto-style1" OnClick="Button1_Click"/>
        </form>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thêm" CssClass="btn-success" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" CssClass="btn-success" OnClick="Button3_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Sửa" CssClass="btn-success" OnClick="Button4_Click"/>
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <div class="table table-hover" style="text-align: center">
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" placeholder="Nhập tên ngành" Width="242px" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="Search" CssClass="btn-success" OnClick="Button5_Click" style="height: 29px"/>
            <br />
        </div>

        </center>

       
          <asp:GridView ID="dgvdiemhk1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="1160px" Height="164px" style="text-align:center" OnSelectedIndexChanged="dgvdiemhk1_SelectedIndexChanged" EnableModelValidation="True">
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
    <br />
                </div>
            </div>
        </form>
    </div>
</asp:Content>
