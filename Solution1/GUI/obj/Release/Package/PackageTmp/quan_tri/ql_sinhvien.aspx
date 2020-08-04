<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Site1.Master" AutoEventWireup="true" CodeBehind="ql_sinhvien.aspx.cs" Inherits="GUI.quan_tri.ql_sinhvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
        }
        th, td {
          padding: 5px;
          text-align: left;    
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div >
        <form>
            <div class="form-group">
               
                <table ">
                    <tr >
                        <td> <asp:Label ID="Label2" runat="server" Text="Mã sinh viên"></asp:Label> </td>

                        <td> <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" placeholder="Nhập mã sinh viên" Width="249px"></asp:TextBox></td>
                    </tr>

                  <tr >
                        <td> <asp:Label ID="Label1" runat="server" Text="Tên sinh viên"></asp:Label> </td>
                        <td>  <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" placeholder="Tên sinh viên" Width="249px"></asp:TextBox></td>
                    </tr>
                    
                    <tr >
                        <td> <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label> </td>
                        <td>  <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" placeholder="Moth/day/year" Width="249px"></asp:TextBox></td>
                    </tr>
                    <tr >
                        <td> <asp:Label ID="Label6" runat="server" Text="Giới tính"></asp:Label> </td>
                        <td>  <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" placeholder="Giới tính sinh viên" Width="249px"></asp:TextBox></td>
                    </tr>
                    <tr >
                        <td> <asp:Label ID="Label7" runat="server" Text="Tên Cố Vấn học tập "></asp:Label> </td>
                        <td>  <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style1" placeholder="Tên cố vấn học tập " Width="249px"></asp:TextBox></td>
                    </tr>
                     <tr >
                        <td> <asp:Label ID="Label8" runat="server" Text="Địa Chỉ sinh viên "></asp:Label> </td>
                        <td>  <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style1" placeholder="Địa chỉ sinh viên" Width="249px"></asp:TextBox></td>
                    </tr>
                    <tr >
                        <td> <asp:Label ID="Label9" runat="server" Text="Mã Lớp "></asp:Label> </td>
                        <td> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> </td>
                    </tr>

                </table>



                    


            </div>
            <asp:Button ID="Button1" runat="server" Text="Thêm Mới" CssClass="btn-success"/>
        </form>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thêm" CssClass="btn-success" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" CssClass="btn-success"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Sửa" CssClass="btn-success"/>
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />&nbsp;<asp:GridView ID="GridView1" runat="server"   CssClass= "table table-striped table-bordered table-condensed" Width="461px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
    </div>



</asp:Content>
