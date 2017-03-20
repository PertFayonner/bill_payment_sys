using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;

namespace BPS
{
    public partial class Bill_Pay : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

            string session = Session["Parameter"].ToString();
            TextBox1.Text = session;


            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            con.Open();
            SqlCommand mycomm = new SqlCommand("select Vendor_type,balance   from customerdetails where Mail_id='" + TextBox1.Text + "'", con);

            SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
            DataSet ds = new DataSet();
            showdata.Fill(ds);
            TextBoxVt.Text = ds.Tables[0].Rows[0]["Vendor_type"].ToString();
            TextBoxBal.Text = ds.Tables[0].Rows[0]["balance"].ToString();

            con.Close();







            int zero = 0;

      

            SqlConnection con1 = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
        
            SqlCommand mycomm1 = new SqlCommand("update customerdetails set balance=@bal where Mail_id='" + TextBox1.Text + "'", con1);

           
            mycomm1.Parameters.AddWithValue("@bal", zero);

            /* SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
             DataSet ds = new DataSet();
             showdata.Fill(ds);
             TextBoxVt.Text = ds.Tables[0].Rows[0]["Vendor_type"].ToString();
             TextBoxBal.Text = ds.Tables[0].Rows[0]["balance"].ToString();
             */
            try
            {
                con1.Open();
                mycomm1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            con1.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    
       
    }
}