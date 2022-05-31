<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="TennisClubRyang.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="StyleSheet" type="text/css" href="css/ToggleButtonSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <!-- User Image -->
            <asp:Image ImageUrl="~/media/no-image.jpg" runat="server" Width="188px" Style="float: left" />
            <!-- User Data -->
            <div style="width: 1067px">
                <div style="height: 118px">
                    <!-- Name -->
                    <div>
                        <label>Fullname: </label>
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </div>

                    <!-- Address -->
                    <div>
                        <label>Road: </label>
                        <asp:Label ID="lblAddressRoad" runat="server"></asp:Label>

                        <label>Number: </label>
                        <asp:Label ID="lblAddressNr" runat="server"></asp:Label>

                        <label>City: </label>
                        <asp:Label ID="lblAddressCity" runat="server"></asp:Label>

                        <label>Postal Code: </label>
                        <asp:Label ID="lblAddressPostalCode" runat="server"></asp:Label>

                    </div>

                    <!-- PhoneNr -->
                    <div>
                        <label>Phone Number: </label>
                        <asp:Label ID="lblPhoneNr" runat="server"></asp:Label>

                    </div>

                    <!-- Email -->
                    <div>
                        <label>Email: </label>
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>

                    </div>

                    <!-- Age -->
                    <div>
                        <label>Age: </label>
                        <asp:Label ID="lblAge" runat="server"></asp:Label>

                    </div>
                </div>
                <!-- Show Login-->
                <asp:Panel ID="LoginInfoPanel" Style="height: 70px" runat="server">
                    <!-- Username -->
                    <div>
                        <label>Username: </label>
                        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                    </div>
                    <!-- Password -->
                    <div>
                        <label>Password: </label>
                        <asp:Label ID="lblPassword" runat="server"></asp:Label>
                    </div>
                </asp:Panel>

                <!-- Show Creditcard-->
                <asp:Panel ID="CreditcardInfoPanel" runat="server" Height="98px">
                    <!-- Name -->
                    <div>
                        <label>Name: </label>
                        <asp:Label ID="lblCardName" runat="server"></asp:Label>
                    </div>
                    <!-- Number -->
                    <div>
                        <label>Cardnumber: </label>
                        <asp:Label ID="lblCardNumber" runat="server"></asp:Label>
                    </div>
                    <!-- ExpirationDate -->
                    <div>
                        <label>Expiration Date: </label>
                        <asp:Label ID="lblCardMonth" runat="server"></asp:Label>
                        <label>/</label>
                        <asp:Label ID="lblCardYear" runat="server"></asp:Label>
                    </div>
                    <!-- SecurityCode -->
                    <div>
                        <label>Security Code: </label>
                        <asp:Label ID="lblCardCode" runat="server"></asp:Label>
                    </div>
                </asp:Panel>
                <!-- Buttons -->
                <div>
                    <!-- Add Login -->
                    <asp:Button ID="AddLoginBtn" PostBackUrl="~/CreateLogin.aspx" Text="Add Login" runat="server" />
                    <!-- Add Creditcard -->
                    <asp:Button ID="AddCreditcardBtn" PostBackUrl="~/AddCreditcard.aspx" Text="Add Creditcard" runat="server" />
                </div>
                <!-- Buttons -->
                <div>
                    <!-- Add Login -->
                    <asp:Panel ID="LoginChkPanel" runat="server">
                        <label class="switch">
                            <asp:CheckBox ID="ShowLoginChk" runat="server" OnCheckedChanged="ShowLoginChk_CheckedChanged" />
                            <span class="slider round"></span>
                        </label>
                        <label>Show Login </label>
                    </asp:Panel>
                    <!-- Add Creditcard -->
                    <asp:Panel ID="CreditcardChkPanel" runat="server">
                        <label class="switch">
                            <asp:CheckBox ID="ShowCreditcardChk" runat="server" OnCheckedChanged="ShowCreditcardChk_CheckedChanged" />
                            <span class="slider round"></span>
                        </label>
                        <label>Show Creditcard </label>
                    </asp:Panel>
                </div>
            </div>

        </div>



    </div>
</asp:Content>
