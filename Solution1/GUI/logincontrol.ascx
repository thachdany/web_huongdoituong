<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="logincontrol.ascx.cs" Inherits="GUI.WebUserControl1" %>


<div class="container" style="padding-left: 0px; padding-right: 0px">
    <div class="form-container">
        <div class="row" style="margin-right:0px">
            <div class="col-lg-8">
                <img src="/img/meeting.jpg" style="width: 100%; height: 400px" />
            </div>
            <div class="col-lg-4 dn" style="padding-left:5px;">
                ĐĂNG NHẬP
                <div class="form-group">
                    <asp:TextBox ID="txttentk" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtmk" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" OnClick="login" Text="Đăng Nhập" />
            </div>
        </div>
    </div>
</div>



