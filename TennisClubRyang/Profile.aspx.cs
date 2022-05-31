using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TennisClubRyang
{
    public partial class Profile : System.Web.UI.Page
    {
        cs.UserProfile profile = new cs.UserProfile();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = profile.FullName;
            lblAddressRoad.Text = profile.AddressRoad;
            lblAddressNr.Text = profile.AddressNr;
            lblAddressPostalCode.Text = profile.AddressPostalCode;
            lblAddressCity.Text = profile.AddressCity;
            lblPhoneNr.Text = profile.PhoneNr;
            lblEmail.Text = profile.Email;
            lblAge.Text = CalculateAge();

            ShowCreditcardChk.Checked = false;
            ShowLoginChk.Checked = false;

            AdjustButtons();
        }

        private string CalculateAge()
        {
            DateTime birthdate = profile.Birthdate;

            // Save today's date.
            DateTime today = DateTime.Today;

            // Calculate the age.
            int age = today.Year - birthdate.Year;

            // Go back to the year in which the person was born in case of a leap year
            if (birthdate.Date > today.AddYears(-age)) age--;

            return age.ToString();
        }

        private void AdjustButtons()
        {
            if (profile.LoginAdded)
            {
                AddLoginBtn.Visible = false;
                LoginChkPanel.Visible = true;
            }
            else
            {
                AddLoginBtn.Visible = true;
                LoginChkPanel.Visible = false;
            }

            if (profile.CreditcardAdded)
            {
                AddCreditcardBtn.Visible = false;
                CreditcardChkPanel.Visible = true;
            }
            else
            {
                AddCreditcardBtn.Visible = true;
                CreditcardChkPanel.Visible = false;
            }
        }

        private void FillCreditcardInformation()
        {
            lblCardName.Text = profile.CardName;
            lblCardNumber.Text = profile.CardNumber.ToString();
            lblCardMonth.Text = profile.CardExpiration.Month.ToString();
            lblCardYear.Text = profile.CardExpiration.Year.ToString();
        }

        private void FillLoginInformation()
        {
            lblUsername.Text = profile.Username;
            lblPassword.Text = profile.Password;
        }

        protected void ShowCreditcardChk_CheckedChanged(object sender, EventArgs e)
        {
            if (ShowCreditcardChk.Checked)
            {
                FillCreditcardInformation();
                CreditcardInfoPanel.Visible = true;
                //lblCardName.Visible = true;
                //lblCardNumber.Visible = true;
                //lblCardMonth.Visible = true;
                //lblCardYear.Visible = true;
            }
            else
            {
                CreditcardInfoPanel.Visible = false;
                //lblCardName.Visible = false;
                //lblCardNumber.Visible = false;
                //lblCardMonth.Visible = false;
                //lblCardYear.Visible = false;
            }
        }

        protected void ShowLoginChk_CheckedChanged(object sender, EventArgs e)
        {
            if (ShowLoginChk.Checked)
            {
                FillLoginInformation();
                LoginInfoPanel.Visible = true;
                //lblUsername.Visible = true;
                //lblPassword.Visible = true;
            }
            else
            {
                LoginInfoPanel.Visible = false;
                //lblUsername.Visible = false;
                //lblPassword.Visible = false;
            }
        }
    }
}