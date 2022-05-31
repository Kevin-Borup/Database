<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="CreateLogin.aspx.cs" Inherits="TennisClubRyang.CreateLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Username -->
    <div>
        <label>Username: </label>
        <asp:TextBox ID="txtBUsername" runat="server"></asp:TextBox>
    </div>
    <!-- Password -->
    <div>
        <label>Password: </label>
        <asp:TextBox ID="txtBPassword" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    <!-- Confirm Login -->
    <asp:Button ID="ConfirmLoginBtn" Text="Confirm" PostBackUrl="~/Profile.aspx" runat="server" OnClick="ConfirmLoginBtn_Click"/>
</asp:Content>
