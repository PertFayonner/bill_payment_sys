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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBoxAp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            con.Open();
            SqlCommand mycomm = new SqlCommand("SELECT pass FROM login_credential where uname='admin'", con);

            SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
            DataSet ds = new DataSet();
            showdata.Fill(ds);
            if (TextBoxAp.Text == ds.Tables[0].Rows[0]["pass"].ToString())
            {
             
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Enter a valid Credential Key");
            }
                     
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}