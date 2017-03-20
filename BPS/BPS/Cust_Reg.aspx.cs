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
    public partial class Cust_Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownListCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");

            con.Open();

            SqlDataAdapter ada = new SqlDataAdapter("select State from countrydetails where Country='" + DropDownListCountry.Text + "'", con);

            DataTable dt = new DataTable();
            DropDownListState.Items.Add(new ListItem("Select State", "0"));

            ada.Fill(dt);            
            DropDownListState.DataSource = dt;

            DropDownListState.DataTextField = "State";

            DropDownListState.DataValueField = "State";
            DropDownListState.DataBind();

            con.Close();
        }

        protected void DropDownListState_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
           SqlCommand insert = new SqlCommand("insert into customerdetails(Name,Address,Contact_no,Country,State,Mail_id,DDN,Registration_date,Vendor_type,Card_no)values(@Name,@Address,@Contact_no,@Country,@State,@Mail_id,@DDN,@Registration_date,@Vendor_type,@Card_no)", con);        
          
            insert.Parameters.AddWithValue("@Name",TextBoxName.Text);
            insert.Parameters.AddWithValue("@Address",TextBoxAddress.Text);
            insert.Parameters.AddWithValue("@Contact_no",TextBoxContact.Text);
            insert.Parameters.AddWithValue("@Country",DropDownListCountry.SelectedItem.Value);
            insert.Parameters.AddWithValue("@State",DropDownListState.SelectedItem.Value);
            insert.Parameters.AddWithValue("@Mail_id",TextBoxEmail.Text);
            if (DropDownListID.SelectedItem.Value == "Passport")
            {

                insert.Parameters.AddWithValue("@DDN", "PASS" + TextBoxDDNo.Text);
            }
            else if (DropDownListID.SelectedItem.Value == "VoterID")
            {
                insert.Parameters.AddWithValue("@DDN", "GMV" + TextBoxDDNo.Text);
            }
            else if (DropDownListID.SelectedItem.Value == "Driving License")
            {
                insert.Parameters.AddWithValue("@DDN", "DL" + TextBoxDDNo.Text);
            }
            else if(DropDownListID.SelectedItem.Value == "PAN Card")
            {
                insert.Parameters.AddWithValue("@DDN", "PAN" + TextBoxDDNo.Text);
            }
            insert.Parameters.AddWithValue("@Registration_date",System.DateTime.Now.ToString("yyyy-MM-dd"));
            insert.Parameters.AddWithValue("@Vendor_type",DropDownListVtype.SelectedItem.Value);
            insert.Parameters.AddWithValue("@Card_no",TextBoxCardNo.Text);
            
           
            try{
                con.Open();
                insert.ExecuteNonQuery();
            }
            catch(Exception ex){       
               
                
            }
            con.Close();

            string message = "Customer Registered Successfully";

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

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
        //    con.Open();
        //    SqlDataAdapter da = new SqlDataAdapter("select Mail_id from customerdetails where Mail_id=@email", con);
        //    DataSet ds = new DataSet();
        //    if (TextBoxEmail.Text == ds.Tables[0].Rows[0][0].ToString())
        //    {
        //        Label1.Text = "Email allready exist";
        //    }
        //    else
        //    {
        //        Label1.Text = "email doesnot exist";
        //        // Label1.Visible = true;
        //    }
        //    con.Close();
        //}

//        protected void Button2_Click(object sender, EventArgs e)
//        {
//            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
//            con.Open();
//            SqlDataAdapter da = new SqlDataAdapter("select Mail_id from customerdetails where Mail_id=@email", con);
//            DataSet ds = new DataSet();
//            if (TextBoxEmail.Text == ds.Tables[0].Rows[0][0].ToString())
//            {
//                Label1.Text = "Email allready exist";
//            }
//            else                  {
//                Label1.Text = "email doesnot exist";
//              // Label1.Visible = true;
//            }
//           con.Close();
//           // string str = "select count(*) from customerdetails where Mail_id='" + TextBoxEmail.Text + "'";
////            SqlCommand com = new SqlCommand("select Mail_id from customerdetails where Mail_id=@email", con);
////            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
////            SqlDataReader dr = com.ExecuteReader();
////            if (dr.HasRows)
////            {
////                Label1.Text = "Email allready exist";
////            }
            
////         /*   int count = Convert.ToInt32(com.ExecuteScalar());
////            if(count>0)
////            {
                
////                Label1.Text="Email allready exist";
////                Label1.Visible = true;
////            }
////*/            else
////            {
////                Label1.Text = "email doesnot exist";
////               // Label1.Visible = true;
////            }
////            con.Close();
//        }
           
        }


    }
