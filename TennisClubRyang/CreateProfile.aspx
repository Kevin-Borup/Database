<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="CreateProfile.aspx.cs" Inherits="TennisClubRyang.CreateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Name -->
    <div>
        <label>Fullname: </label>
        <asp:TextBox ID="txtBName" runat="server"></asp:TextBox>
    </div>

    <!-- Address -->
    <div>
        <label>Road: </label>
        <asp:TextBox ID="txtBRoad" runat="server"></asp:TextBox>
        <label>Number: </label>
        <asp:TextBox ID="txtBNumber" runat="server"></asp:TextBox>
        <label>City: </label>
        <asp:TextBox ID="txtBCity" runat="server"></asp:TextBox>
        <label>Postal Code: </label>
        <asp:TextBox ID="txtBPostalCode" runat="server"></asp:TextBox>
    </div>

    <!-- PhoneNr -->
    <div>
        <label>Phone Number: </label>
        <asp:TextBox ID="txtBPhoneNr" runat="server" TextMode="Number"></asp:TextBox>
    </div>

    <!-- Email -->
    <div>
        <label>Email: </label>
        <asp:TextBox ID="txtBEmail" runat="server" TextMode="Email"></asp:TextBox>
    </div>

    <!-- Age -->
    <div>
        <label>Birthdate: </label>
        <asp:TextBox ID="txtBBirthdate" runat="server" TextMode="Date"></asp:TextBox>
    </div>
    <asp:Button ID="CreateProfileBtn" Text="Create Profile" runat="server" OnClick="CreateProfileBtn_Click" />


</asp:Content>
