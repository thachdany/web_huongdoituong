<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Site1.Master" AutoEventWireup="true" CodeBehind="ql_bm.aspx.cs" Inherits="GUI.quan_tri.ql_bm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>QUẢN LÝ BỘ MÔN</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
    <h3>QUẢN LÝ BỘ MÔN</h3>
      </center>
    <div >
    <form>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Mã Bộ Môn"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" placeholder="Nhập mã bộ môn" Width="242px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Tên Bộ Môn"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" placeholder="Nhập tên bộ môn" Width="242px"></asp:TextBox>     
        </div>
        <asp:Button ID="Button1" runat="server" Text="Thêm Mới" CssClass="btn-success" OnClick="Button1_Click"/>
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
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" placeholder="Nhập tên bộ môn" Width="242px"></asp:TextBox>     
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Search" CssClass="btn-success" OnClick="Button5_Click"/>
             <br />
        </div>

        </center>

       
          <asp:GridView ID="dgvdiemhk1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="1160px" Height="164px" style="text-align:center" OnSelectedIndexChanged="dgvdiemhk1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ma_bm" HeaderText="Mã Bộ Môn"  HeaderStyle-CssClass="text-center" />
            <asp:BoundField DataField="ten_bn" HeaderText=" Tên Bộ Môn"  HeaderStyle-CssClass="text-center"/>        
       
          
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

</asp:Content>
