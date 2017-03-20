using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Security;
namespace BPS
{
    public partial class Vendor_Reg : System.Web.UI.Page
    {

        string strConnString = ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;

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
            SqlCommand insert=new SqlCommand("insert into vendor_details(name,cmp_regno,ven_type,address,country,state,email,contact_no,website,emp_count,cust_count,YOE,registration)values(@name,@cmp_regno,@ven_type,@address,@country,@state,@email,@contact_no,@website,@emp_count,@cust_count,@YOE,@Registration_date)",con);
            insert.Parameters.AddWithValue("@name",TextBoxName.Text);
            insert.Parameters.AddWithValue("@cmp_regno",TextBoxComReg.Text);
            insert.Parameters.AddWithValue("@ven_type",DropDownListVtype.SelectedItem.Value);
            insert.Parameters.AddWithValue("@address",TextBoxAddr.Text);
            insert.Parameters.AddWithValue("@country",DropDownListCountry.SelectedItem.Value);
            insert.Parameters.AddWithValue("@state",DropDownListState.SelectedItem.Value);
            insert.Parameters.AddWithValue("@email",TextBoxEmail.Text);
            insert.Parameters.AddWithValue("@contact_no",TextBoxContact.Text);
            insert.Parameters.AddWithValue("@website",TextBoxWeb.Text);
            insert.Parameters.AddWithValue("emp_count",TextBoxEC.Text);
            insert.Parameters.AddWithValue("@cust_count",TextBoxCC.Text);
            insert.Parameters.AddWithValue("@YOE",TextBoxYOE.Text);
           insert.Parameters.AddWithValue("@Registration_date", System.DateTime.Now.ToString("yyyy-MM-dd"));
            try{
                con.Open();
                insert.ExecuteNonQuery();
            }
            catch(Exception ex){       
               
                
            }
            con.Close();

            string message = "Vendor Resgistered  Successfully";

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

        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {

        }
           





           
  
   
     
          
            
           

        }
    }


       


        

        
        