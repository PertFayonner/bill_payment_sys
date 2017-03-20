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
    public partial class Customer_Update : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                TextBoxName.Enabled = false;
                TextBoxAddress.Enabled = false;
                TextBoxContact.Enabled = false;
                DropDownListCountry.Enabled = false;
                DropDownListState.Enabled = false;
                TextBoxEmail.Enabled = false;
                DropDownListVtype.Enabled = false;
                TextBoxCardNo.Enabled = false;
                TextBoxBalance.Enabled = false;
               LabelID.Text = Request.QueryString["Parameter"].ToString();
        //string session    = Session["Parameter"].ToString();
        //LabelID.Text = session;
                SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
                con.Open();
                SqlCommand mycomm = new SqlCommand("select Name,Address,Contact_no,Country ,State,Mail_id,Vendor_type,Card_no ,balance   from customerdetails where Customer_id='" + LabelID.Text + "'", con);

                SqlDataAdapter showdata = new SqlDataAdapter(mycomm);
                DataSet ds = new DataSet();
                showdata.Fill(ds);
                TextBoxName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                TextBoxAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                TextBoxContact.Text = ds.Tables[0].Rows[0]["Contact_no"].ToString();
                DropDownListCountry.Text = ds.Tables[0].Rows[0]["Country"].ToString();
                DropDownListState.Text = ds.Tables[0].Rows[0]["State"].ToString();
                TextBoxEmail.Text = ds.Tables[0].Rows[0]["Mail_id"].ToString();
                DropDownListVtype.Text = ds.Tables[0].Rows[0]["Vendor_type"].ToString();
                TextBoxCardNo.Text = ds.Tables[0].Rows[0]["Card_no"].ToString();
                TextBoxBalance.Text = ds.Tables[0].Rows[0]["balance"].ToString();

                con.Close();
            }
            
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
           
            TextBoxAddress.Enabled =true;
            TextBoxContact.Enabled = true;
            DropDownListCountry.Enabled = true; ;
            DropDownListState.Enabled = true;
            TextBoxEmail.Enabled = true;
            DropDownListVtype.Enabled = true;
            TextBoxCardNo.Enabled = true;
            TextBoxBalance.Enabled = true;
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Data Source=PC251733;Initial Catalog=BPS;Integrated Security=true");
            SqlCommand update = new SqlCommand("update customerdetails SET Address=@Address,Contact_no=@Contact_no,Country=@Country,State=@State,Mail_id=@Mail_id,balance=@Balance,Vendor_type=@Vtype,Card_no=@Card_no WHERE Customer_id='" + LabelID.Text +"'", con);
            update.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
            update.Parameters.AddWithValue("@Contact_no", TextBoxContact.Text);
            update.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.Value);
            update.Parameters.AddWithValue("@State", DropDownListState.SelectedItem.Value);
            update.Parameters.AddWithValue("@Mail_id", TextBoxEmail.Text);
            update.Parameters.AddWithValue("@Balance", TextBoxBalance.Text);
            update.Parameters.AddWithValue("@Vtype", DropDownListVtype.SelectedItem.Value);
            update.Parameters.AddWithValue("@Card_no", TextBoxCardNo.Text);

            try
            {
                con.Open();
                update.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            con.Close();

            string message = "Customer Updated Successfully";

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

   
    }
}