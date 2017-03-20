using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.SessionState;

namespace BPS
{
    public partial class Vendor_Update : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBoxCompRegNo.Enabled = false;
                TextBoxName.Enabled = false;                
                DropDownListVtype.Enabled = false;
                TextBoxCertificate.Enabled = false;
                TextBoxCIssueDt.Enabled = false;
                TextBoxCValDt.Enabled = false;
                TextBoxYOE.Enabled = false;
                DropDownListCountry.Enabled = false;
                DropDownListState.Enabled = false;
                TextBoxAddress.Enabled = false;
                TextBoxContact.Enabled = false;
                TextBoxEmail.Enabled = false;
                TextBoxWebsite.Enabled = false;
                TextBoxEcount.Enabled = false;
                TextBoxCcount.Enabled = false;
                LabelVId.Text = Request.QueryString["Parameter"].ToString();
                SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
                con.Open();
                SqlCommand mycomm = new SqlCommand("select name,cmp_regno,address,contact_no,country ,state,email,website,emp_count,cust_count,YOE,ven_type  from vendor_details where id='" + LabelVId.Text + "'", con);
                SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
                DataSet ds = new DataSet();
                showdata.Fill(ds);

                SqlCommand mycomm1 = new SqlCommand("select issue_dt,validity_dt,certificate from cert_details where vendor_id='" + LabelVId.Text + "'", con);
                SqlDataAdapter showdata1 = new SqlDataAdapter(mycomm1);
                DataSet ds1 = new DataSet();
                showdata1.Fill(ds1);
                TextBoxName.Text = ds.Tables[0].Rows[0]["name"].ToString();
                TextBoxAddress.Text = ds.Tables[0].Rows[0]["address"].ToString();
                TextBoxContact.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                DropDownListCountry.Text = ds.Tables[0].Rows[0]["country"].ToString();
                DropDownListState.Text = ds.Tables[0].Rows[0]["state"].ToString();
                TextBoxEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
                DropDownListVtype.Text = ds.Tables[0].Rows[0]["ven_type"].ToString();
                TextBoxCompRegNo.Text = ds.Tables[0].Rows[0]["cmp_regno"].ToString();
                TextBoxWebsite.Text = ds.Tables[0].Rows[0]["website"].ToString();
                TextBoxEcount.Text = ds.Tables[0].Rows[0]["emp_count"].ToString();
                TextBoxCcount.Text = ds.Tables[0].Rows[0]["cust_count"].ToString();
                TextBoxYOE.Text = ds.Tables[0].Rows[0]["YOE"].ToString();

                TextBoxCIssueDt.Text = ds1.Tables[0].Rows[0]["issue_dt"].ToString();
                TextBoxCValDt.Text = ds1.Tables[0].Rows[0]["validity_dt"].ToString();
                TextBoxCertificate.Text = ds1.Tables[0].Rows[0]["certificate"].ToString();

                con.Close();
            }
        }

        protected void get_click(object sender, EventArgs e)
        {
            

        }

        protected void TextBoxWebsite_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            SqlCommand update = new SqlCommand("update vendor_details SET cmp_regno=@cno,address=@Address,contact_no=@Contact_no,country=@Country,state=@State,email=@Mail_id,website=@web,ven_type=@Vtype,emp_count=@ec,cust_count=@cc,YOE=@yoe WHERE id='" + LabelVId.Text + "'", con);
            SqlCommand update1 = new SqlCommand("update cert_details SET issue_dt=@issue,validity_dt=@vd,contact_no=@Contact_no,certificate=@cert WHERE id='" + LabelVId.Text + "'", con);
            update.Parameters.AddWithValue("@cno", TextBoxCompRegNo.Text);
            update.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
            update.Parameters.AddWithValue("@Contact_no", TextBoxContact.Text);
            update.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.Value);
            update.Parameters.AddWithValue("@State", DropDownListState.SelectedItem.Value);
            update.Parameters.AddWithValue("@Mail_id", TextBoxEmail.Text);
            update.Parameters.AddWithValue("@web", TextBoxWebsite.Text);
            update.Parameters.AddWithValue("@ec", TextBoxEcount.Text);
            update.Parameters.AddWithValue("@cc", TextBoxCcount.Text);
            update.Parameters.AddWithValue("@yoe", TextBoxYOE.Text);

            update1.Parameters.AddWithValue("@issue", TextBoxCIssueDt.Text);
            update1.Parameters.AddWithValue("@vd", TextBoxCValDt.Text);
            update1.Parameters.AddWithValue("@Contact_no", TextBoxCertificate.Text);
          
         update.Parameters.AddWithValue("@Vtype", DropDownListVtype.SelectedItem.Value);
            

            try
            {
                con.Open();
                update.ExecuteNonQuery();
                update1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            con.Close();

            string message = "Vendor Updated Successfully";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            TextBoxName.Enabled = true;
            DropDownListVtype.Enabled = true; 
            TextBoxCValDt.Enabled = true;            
            DropDownListCountry.Enabled = true;
            DropDownListState.Enabled = true;
            TextBoxAddress.Enabled = true;
            TextBoxContact.Enabled = true;
            TextBoxEmail.Enabled = true;
            TextBoxWebsite.Enabled = true;
            TextBoxEcount.Enabled = true;
            TextBoxCcount.Enabled = true;
        }
    }
}