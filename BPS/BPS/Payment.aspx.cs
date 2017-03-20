using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BPS
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton10.Checked)
            {
                Response.Redirect("CreditCard.aspx");
            }

            if (RadioButton11.Checked)
            {
                Response.Redirect("DebitCard.aspx");
            }

            if (RadioButton12.Checked)
            {
                Response.Redirect("NetBanking.aspx");
            }

            




        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

    }
}