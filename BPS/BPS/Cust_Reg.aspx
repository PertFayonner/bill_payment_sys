<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Cust_Reg.aspx.cs" Inherits="BPS.Cust_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
<span style="width: 99%; height: 700px; background-image: url('images/v1.jpg');display:inherit" />

    <p style="height: 89px; text-align: left; font-family: 'Comic Sans MS'">
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
        style="font-family:Georgia, serif; font-size: xx-large; color: #660033"><strong>Customer Registration Form</strong></span></p>
<p>
</p>
<table style="width: 199%; height: 338px;">
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Name</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxName" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBoxName" ErrorMessage="Enter a name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Address</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxAddress" runat="server" Width="197px" Height="69px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxAddress" ErrorMessage="Address is required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Contact No</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxContact" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBoxContact" ErrorMessage="Contact No is required " 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBoxContact" ErrorMessage="Enter a valid no" 
                ForeColor="#FF3300" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Country</td>
        <td style="width: 194px">
            <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px" 
                onselectedindexchanged="DropDownListCountry_SelectedIndexChanged" AutoPostBack="true" >
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>US</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="0"
                ControlToValidate="DropDownListCountry"  ErrorMessage="Select a country" 
                ForeColor="#FF3300" ></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            State</td>
        <td style="width: 194px">
            <asp:DropDownList ID="DropDownListState" runat="server" Width="200px" 
                onselectedindexchanged="DropDownListState_SelectedIndexChanged">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="0"
                ControlToValidate="DropDownListState" ErrorMessage="Select a state" 
                ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Email</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBoxEmail" ErrorMessage="Enter Email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid email" 
                ForeColor="#FF3300" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Identification</td>
        <td style="width: 194px">
            <asp:DropDownList ID="DropDownListID" runat="server" width="200">
                <asp:ListItem Value="0">Select ID Document</asp:ListItem>
                <asp:ListItem>VoterID</asp:ListItem>
                <asp:ListItem>Driving License</asp:ListItem>
                <asp:ListItem>Passport</asp:ListItem>
                <asp:ListItem>PAN Card</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" InitialValue="0"
                ControlToValidate="DropDownListID" ErrorMessage="Enter Identification" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Document Detail No</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxDDNo" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBoxDDNo" ErrorMessage="Enter document detail no" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Vendor Type</td>
        <td style="width: 194px">
            <asp:DropDownList ID="DropDownListVtype" runat="server" Width="200px">
                <asp:ListItem Value="0">Select Vendor</asp:ListItem>
                <asp:ListItem>Electrician</asp:ListItem>
                <asp:ListItem>Insurance</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
                <asp:ListItem>Tax</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="0"
                ControlToValidate="DropDownListVtype" ErrorMessage="Select a vendor type" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 500px; font-weight: bold; color: #008080;">
            Card No</td>
        <td style="width: 194px">
            <asp:TextBox ID="TextBoxCardNo" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBoxCardNo" ErrorMessage="Enter Card Number" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBoxCardNo" ErrorMessage="Enter a valid Card No" 
                ForeColor="#FF3300" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
    <p style="margin-left: 240px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p style="margin-left: 240px">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#006666" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="Reset" onclick="return Reset1_onclick()" 
            
            style="width: 65px; font-size: medium; font-weight: bold; color: #008080;" />&nbsp;&nbsp; </p>
    <p style="margin-left: 240px">
        &nbsp;</p>
    <p style="margin-left: 240px; width: 238px;">
        &nbsp;</p>
    <p style="margin-left: 240px">
        &nbsp;</p>
    <p style="margin-left: 240px">
        &nbsp;</p>
    <p style="margin-left: 240px">
        &nbsp;</p>
<p>
    &nbsp;</p>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }



        function Submit1_onclick() {

        }

// ]]>
    </script>
   
    
   
</asp:Content>

