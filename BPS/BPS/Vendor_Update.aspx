<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Vendor_Update.aspx.cs" Inherits="BPS.Vendor_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<span style="width: 99%; height: 700px; background-image: url('images/v2.jpg');display:inherit" />

    <p>
        <br />
        <span style="font-family: 'Comic Sans MS'; font-size: xx-large; color: #660033">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        VENDOR UPDATION FORM</strong></span></p>
    <table style="width: 100%">
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Vendor ID</b></td>
            <td style="width: 163px" id="VId">
                <asp:Label ID="LabelVId" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Company Registration No</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxCompRegNo" runat="server" Width="196px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxCompRegNo" 
                    ErrorMessage="Enter Company Registration No" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Vendor Name</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxName" ErrorMessage="Enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px; height: 26px;">
                <b>Vendor Type</b></td>
            <td style="width: 163px; height: 26px;">
                <asp:DropDownList ID="DropDownListVtype" runat="server" Width="200px">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>Electrician</asp:ListItem>
                    <asp:ListItem>Telephone</asp:ListItem>
                    <asp:ListItem>Insurance</asp:ListItem>
                    <asp:ListItem>Tax</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownListVtype" ErrorMessage="Select A Vendor Type" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Certificate</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxCertificate" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxCertificate" ErrorMessage="Enter The certificate" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Certificate Issue Date</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxCIssueDt" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxCIssueDt" ErrorMessage="Enter the issue date" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Certificate validity Date</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxCValDt" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBoxCValDt" ErrorMessage="Enter the validity date" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>YOE</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxYOE" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxYOE" ErrorMessage="Enter the date" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Country</b></td>
            <td style="width: 163px">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px" 
                    onselectedindexchanged="DropDownListCountry_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>US</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DropDownListCountry" ErrorMessage="Select a country" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>State</b></td>
            <td style="width: 163px">
                <asp:DropDownList ID="DropDownListState" runat="server" Width="200px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem>Scotland</asp:ListItem>
                    <asp:ListItem>New Jersey</asp:ListItem>
                    <asp:ListItem>Boston</asp:ListItem>
                    <asp:ListItem>Rome</asp:ListItem>
                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="DropDownListState" ErrorMessage="Enter a state" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Address</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxAddress" runat="server" Height="56px" Width="201px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBoxAddress" ErrorMessage="Enter Address" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; height: 26px; width: 283px">
                <b>Contact No</b></td>
            <td style="height: 26px; width: 163px">
                <asp:TextBox ID="TextBoxContact" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBoxContact" ErrorMessage="Enter Contact No" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxContact" ErrorMessage="Enter a valid contact no" 
                    ForeColor="#FF3300" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Email</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter email id" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid email" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Website</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxWebsite" runat="server" Width="200px" 
                    ontextchanged="TextBoxWebsite_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBoxWebsite" ErrorMessage="Enter website" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBoxWebsite" ErrorMessage="Enter a valid website" 
                    ForeColor="#FF3300" 
                    ValidationExpression="^([www]{1})+([.])+([a-zA-Z]+)+([.])+([a-z]+)$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Employee Count</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxEcount" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBoxEcount" ErrorMessage="Enter Employee Count" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: large; text-align: right; width: 283px">
                <b>Customer Count</b></td>
            <td style="width: 163px">
                <asp:TextBox ID="TextBoxCcount" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="TextBoxCcount" ErrorMessage="Enter Customer Count" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Edit" Width="71px" 
        onclick="Button1_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="ButtonUpdate" runat="server" onclick="ButtonUpdate_Click" 
        Text="Update" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
</asp:Content>
