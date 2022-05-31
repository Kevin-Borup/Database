<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="AddCreditcard.aspx.cs" Inherits="TennisClubRyang.AddCreditcard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Name -->
    <div>
        <label>Name: </label>
        <asp:TextBox ID="txtBName" runat="server"></asp:TextBox>
    </div>
    <!-- Number -->
    <div>
        <label>Cardnumber: </label>
        <asp:TextBox ID="txtBCardNr" runat="server" TextMode="Number"></asp:TextBox>
    </div>
    <!-- ExpirationDate -->
    <div>
        <label>Month: </label>
        <asp:TextBox ID="txtBMonth" runat="server" TextMode="Number"></asp:TextBox>
        <label>Year: </label>
        <asp:TextBox ID="txtBYear" runat="server"  TextMode="Number"></asp:TextBox>
    </div>
    <!-- SecurityCode -->
    <div>
        <label>Security Code: </label>
        <asp:TextBox ID="txtBCardCode" runat="server" TextMode="Number"></asp:TextBox>
    </div>
    <!-- Confirm Card -->
    <asp:Button ID="ConfirmCreditcardBtn" Text="Confirm" PostBackUrl="~/Profile.aspx" runat="server" OnClick="ConfirmCreditcardBtn_Click"/>
</asp:Content>
