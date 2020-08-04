<%@ Page Title="" Language="C#" MasterPageFile="~/quan_tri/Site1.Master" AutoEventWireup="true" CodeBehind="ql_bm.aspx.cs" Inherits="GUI.quan_tri.ql_bm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            border: 1px solid #ccc;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
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
        <asp:Button ID="Button1" runat="server" Text="Thêm Mới" CssClass="btn-success"/>
    </form>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Thêm" CssClass="btn-success" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Xóa" CssClass="btn-success"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Sửa" CssClass="btn-success"/>
    &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
&nbsp;<asp:GridView ID="GridView1" runat="server"   CssClass= "table table-striped table-bordered table-condensed" Width="461px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>


        <br />


    </div>

</asp:Content>
