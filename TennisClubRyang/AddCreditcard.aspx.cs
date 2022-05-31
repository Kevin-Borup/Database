using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TennisClubRyang
{
    public partial class AddCreditcard : System.Web.UI.Page
    {
        cs.ProcessHandler handler = new cs.ProcessHandler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConfirmCreditcardBtn_Click(object sender, EventArgs e)
        {
            DateTime cardExp = new DateTime(Convert.ToInt32(txtBYear.Text), Convert.ToInt32(txtBMonth.Text), 1);

            if (handler.SendCreditcardToSession(txtBName.Text, txtBCardNr.Text, cardExp, txtBCardCode.Text))
            {
                handler.SendCreditcardToDatabase();
            }
        }
    }
}