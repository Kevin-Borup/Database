using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TennisClubRyang
{
    public partial class CreateLogin : System.Web.UI.Page
    {

        cs.ProcessHandler handler = new cs.ProcessHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConfirmLoginBtn_Click(object sender, EventArgs e)
        {
            if (handler.SendLoginToSession(txtBUsername.Text, txtBPassword.Text))
            {
                handler.SendLoginToDatabase();
            }
        }
    }
}