<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Customer_Update.aspx.cs" Inherits="BPS.Customer_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<span style="width: 99%; height: 700px; background-image: url('images/v2.jpg');display:inherit" />

    <p>
        <br style="margin-left: 80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: xx-large; font-family: 'Comic Sans MS'; color: #660033">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CUSTOMER UPDATION</strong></span></p>
   <p>
</p>
<table style="width: 100%">
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 27px;">
            <b>Customer ID</b></td>
        <td style="width: 91px; height: 27px;">
            <asp:Label ID="LabelID" runat="server" Text="Label"></asp:Label>
        </td>
        <td style="height: 27px">
            </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 30px;">
            <b>Customer Name</b></td>
        <td style="width: 91px; height: 30px;">
            <asp:TextBox ID="TextBoxName" runat="server" Width="200px" Height="24px"></asp:TextBox>
        </td>
        <td style="height: 30px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBoxName" ErrorMessage="Name is required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif;">
            <b>Contact No</b></td>
        <td style="width: 91px">
            <asp:TextBox ID="TextBoxContact" runat="server" Width="200px" Height="22px"></asp:TextBox>
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
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 27px;">
            <b>Country</b></td>
        <td style="width: 91px; height: 27px;">
            <asp:DropDownList ID="DropDownListCountry" runat="server" Width="198px" 
                onselectedindexchanged="DropDownListCountry_SelectedIndexChanged" 
                AutoPostBack="True" Height="22px">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>US</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 27px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="0"
                ControlToValidate="DropDownListCountry"  ErrorMessage="Select a country" 
                ForeColor="#FF3300" ></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 26px;">
            <b>State</b></td>
        <td style="width: 91px; height: 26px;">
            <asp:DropDownList ID="DropDownListState" runat="server" Height="22px" 
                Width="200px">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem >West Bengal</asp:ListItem>
                <asp:ListItem>Scotland</asp:ListItem>
                <asp:ListItem>New Jersey</asp:ListItem>
                <asp:ListItem>Boston</asp:ListItem>
                <asp:ListItem>Rome</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 26px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" InitialValue="0"
                ControlToValidate="DropDownListState" Display="Dynamic" 
                ErrorMessage="Select State" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 31px;">
            <b>Email</b></td>
        <td style="width: 91px; height: 31px;">
            <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" Height="24px"></asp:TextBox>
        </td>
        <td style="height: 31px">
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
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif;">
            <b>Address</b></td>
        <td style="width: 91px">
            
            <asp:TextBox ID="TextBoxAddress" runat="server" Width="202px" Height="56px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBoxAddress" ErrorMessage="Enter an address" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 28px;">
            <b>Balance Amount</b></td>
        <td style="width: 91px; height: 28px;">
            <asp:TextBox ID="TextBoxBalance" runat="server" Width="200px" Height="23px"></asp:TextBox>
        </td>
        <td style="height: 28px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBoxBalance" ErrorMessage="Enter Balance Amount" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif; height: 28px;">
            <b>Vendor Type</b></td>
        <td style="width: 91px; height: 28px;">
            <asp:DropDownList ID="DropDownListVtype" runat="server" Width="200px" 
                Height="23px">
                <asp:ListItem Value="0">Select Vendor</asp:ListItem>
                <asp:ListItem>Electrician</asp:ListItem>
                <asp:ListItem>Insurance</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
                <asp:ListItem>Tax</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 28px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="0"
                ControlToValidate="DropDownListVtype" ErrorMessage="Select a vendor type" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 389px; font-size: large; font-weight: bold; color: #006666; font-family: 'Times New Roman', Times, serif;">
            <b>Card No</b></td>
        <td style="width: 91px">
            <asp:TextBox ID="TextBoxCardNo" runat="server" Width="200px" Height="22px"></asp:TextBox>
        </td>
        <td>
            <br />
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
    
    
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;
    </p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="ButtonEdit" runat="server" onclick="ButtonEdit_Click" 
        Text="Edit" Font-Bold="True" Font-Size="Large" ForeColor="#006666" 
            Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="ButtonUpdate" runat="server" Text="Update" 
        onclick="ButtonUpdate_Click" Font-Bold="True" Font-Size="Large" 
            ForeColor="#006666" />
        </p>
<p>
</p>
<p>
</p>
    </span>
</asp:Content>
