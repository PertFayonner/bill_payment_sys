using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BPS
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void candidateid_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Session["Parameter"] = candidateid.Text;
          //  Response.Redirect("Customer_Update.aspx");
            Response.Redirect("Customer_Update.aspx?Parameter=" + candidateid.Text);


        }
    }
}