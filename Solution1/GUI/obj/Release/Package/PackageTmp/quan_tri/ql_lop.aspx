<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Site1.Master" AutoEventWireup="true" CodeBehind="ql_lop.aspx.cs" Inherits="GUI.quan_tri.ql_lop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        <br />
    </p>
    <div >
        <form>
           
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Mã Lớp"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" placeholder="Nhập mã lớp " Width="249px"></asp:TextBox>
                <br />
                <br />
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Tên lớp"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" placeholder="Nhập tên lớp" Width="242px" style="margin-top: 0"></asp:TextBox>
                    <br />
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Tên Ngành"></asp:Label>
                     
                     <asp:DropDownList ID="DropDownList1" runat="server">
                     </asp:DropDownList>
                     
                    <br />
                </div>
                <br />
            </div>
            <asp:Button ID="Button1" runat="server" Text="Thêm Mới" CssClass="btn-success"/>
        </form>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thêm" CssClass="btn-success" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" CssClass="btn-success"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server"  Text="Sửa" CssClass="btn-success"/>
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />&nbsp;<asp:GridView ID="GridView1" runat="server"   CssClass= "table table-striped table-bordered table-condensed" Width="461px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
    </div>
        
</asp:Content>
