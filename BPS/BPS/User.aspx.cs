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
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Session["Parameter"] = TextBoxUname.Text;
            }

        }

       

         protected void Button1_Click(object sender, EventArgs e)
         {
             SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            con.Open();
            SqlConnection con1 = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            con1.Open();
           SqlCommand mycomm = new SqlCommand("SELECT uname, pass FROM login_credential where uname='" + TextBoxUname.Text + "'", con);

            SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
           DataSet ds = new DataSet();
           showdata.Fill(ds);

            SqlCommand check_User_Name = new SqlCommand("SELECT Customer_id FROM customerdetails WHERE ([Mail_id] = @user)", con1);
            check_User_Name.Parameters.AddWithValue("@user", TextBoxUname.Text);
            SqlDataReader reader = check_User_Name.ExecuteReader();
            if (reader.HasRows)
            {
                if (TextBoxUname.Text == ds.Tables[0].Rows[0]["uname"].ToString() & TextBoxPass.Text == ds.Tables[0].Rows[0]["pass"].ToString())
                {
                    Response.Redirect("Bill_Pay.aspx");
               }
                else
                {
                   string message = "Username and Password Mismatch";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=setTimeout(function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')},");

                    sb.Append("1000);");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
               }
            }
             
            else
            {
                string message = "User Does Not Exist in the System";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=setTimeout(function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')},");

                    sb.Append("1000);");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }
           

            con.Close();
            con1.Close();
                  
         }

         protected void TextBoxPass_TextChanged(object sender, EventArgs e)
         {

         }

}





    }
