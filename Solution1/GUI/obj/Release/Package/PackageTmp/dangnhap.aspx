<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="GUI.WebForm1" %>
<%@ Register Src="~/logincontrol.ascx" TagPrefix="UC" TagName="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <UC:login runat="server" />
</asp:Content>
