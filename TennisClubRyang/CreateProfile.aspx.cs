using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TennisClubRyang
{
    public partial class CreateProfile : System.Web.UI.Page
    {
        cs.ProcessHandler handler = new cs.ProcessHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateProfileBtn_Click(object sender, EventArgs e)
        {
            DateTime birthdate = DateTime.Parse(txtBBirthdate.Text);
            // Handle data
            if (handler.SendProfileToSession(txtBName.Text,
                                     txtBRoad.Text,
                                     txtBNumber.Text,
                                     txtBPostalCode.Text,
                                     txtBCity.Text,
                                     txtBPhoneNr.Text,
                                     txtBEmail.Text,
                                     birthdate))
            {
                handler.SendProfileToDatabase();
                // Redirect
                Response.Redirect("Profile.aspx");
            }
        }
    }
}