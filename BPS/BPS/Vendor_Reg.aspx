<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Vendor_Reg.aspx.cs" Inherits="BPS.Vendor_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<span style="width: 99%; height: 700px; background-image: url('images/v2.jpg');display:inherit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h1 style="font-family:Georgia, serif;font-style:inherit; color:purple">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vendor Registration Form</h1>
    <table style="width: 100%; height: 467px;">
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Name</td>
            <td style="width: 131px; height: 21px;">
                <asp:TextBox ID="TextBoxName" runat="server" Width="197px" 
                    ontextchanged="TextBoxName_TextChanged" Height="26px"></asp:TextBox>
            </td>
            <td style="height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is Required" ControlToValidate="TextBoxName" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Company Registration Number</td>
            <td style="width: 131px; height: 22px;">
                <asp:TextBox ID="TextBoxComReg" runat="server" Width="200px" Height="24px"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Company Registration No is Required" 
                    ControlToValidate="TextBoxComReg" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Vendor Type</td>
            <td style="width: 131px; height: 47px;">
                <asp:DropDownList ID="DropDownListVtype" runat="server" Width="200px" 
                    Height="21px">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>Electricity</asp:ListItem>
                    <asp:ListItem>Insurance</asp:ListItem>
                    <asp:ListItem>Tax</asp:ListItem>
                    <asp:ListItem>Telephone</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 47px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListVtype" InitialValue="0" 
                    ErrorMessage="Select a Vendor Type"  
                    ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Country</td>
            <td style="width: 131px; height: 28px;">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px" OnSelectedIndexChanged="DropDownListCountry_SelectedIndexChanged"
                    AutoPostBack="true" Height="22px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                    <asp:ListItem>US</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
            <td style="height: 28px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="0" 
                    ErrorMessage="Select a Counrty" ControlToValidate="DropDownListCountry" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                State</td>
            <td style="width: 131px; height: 31px;">
                <asp:DropDownList ID="DropDownListState" runat="server" Width="200px" 
                    onselectedindexchanged="DropDownListState_SelectedIndexChanged" 
                    Height="21px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                   
                </asp:DropDownList>
            </td>
            <td style="height: 31px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="0"
                    ControlToValidate="DropDownListState" ErrorMessage="Select a State" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Address</td>
            <td style="width: 131px; height: 56px;">
                <asp:TextBox ID="TextBoxAddr" runat="server" Width="203px" 
                     Height="65px"></asp:TextBox>
            </td>
            <td style="height: 56px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Address is Required" ControlToValidate="TextBoxAddr" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Email</td>
            <td style="width: 131px; height: 34px;">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" Height="21px"></asp:TextBox>
            </td>
            <td style="height: 34px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Email is Required" ControlToValidate="TextBoxEmail" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter a Valid Email " 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Contact No</td>
            <td style="width: 131px; height: 40px;">
                <asp:TextBox ID="TextBoxContact" runat="server" Width="200px" Height="21px"></asp:TextBox>
            </td>
            <td style="height: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Contact No is Required" ControlToValidate="TextBoxContact" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Enter a Valid Contact No" ControlToValidate="TextBoxContact" 
                    ForeColor="#FF3300" ValidationExpression="^\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Website</td>
            <td style="width: 131px; height: 40px;">
                <asp:TextBox ID="TextBoxWeb" runat="server" Width="200px" Height="21px"></asp:TextBox>
            </td>
            <td style="height: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Website is Required" ControlToValidate="TextBoxWeb" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBoxWeb" ErrorMessage="Enter a Valid URL" 
                    ForeColor="#FF3300" 
                    ValidationExpression="^([www]{1})+([.])+([a-zA-Z]+)+([.])+([a-z]+)$" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
&nbsp;Employees Count</td>
            <td style="width: 131px; height: 26px;">
                <asp:TextBox ID="TextBoxEC" runat="server" Width="200px" Height="21px"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="Employees Count is Required" ControlToValidate="TextBoxEC" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBoxEC" ErrorMessage="Count should be in numbers" 
                    ForeColor="#FF3300" Display="Dynamic" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                Customer Count</td>
            <td style="width: 131px; height: 37px;">
                <asp:TextBox ID="TextBoxCC" runat="server" Width="200px" Height="22px"></asp:TextBox>
            </td>
            <td style="height: 37px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="Customer Count is Required" ControlToValidate="TextBoxCC" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBoxCC" ErrorMessage="Count should be in numbers" 
                    ForeColor="#FF3300" Display="Dynamic" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-size: medium; color: #800080; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                YOE</td>
            <td style="width: 131px; height: 37px;">
                &nbsp;<asp:TextBox ID="TextBoxYOE" runat="server" Width="200px" Height="20px" 
                   ></asp:TextBox>
            </td>
            <td style="height: 37px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="YOE is Required" ForeColor="#FF3300" 
                    ControlToValidate="TextBoxYOE"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBoxYOE" ErrorMessage="Enter a Valid Year" 
                    ForeColor="#FF3300" ValidationExpression="^(19|20)[0-9]{2}[- / .](0[1-9]|1[0-2])[- / .]([1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])$" 
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
        ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
        Width="71px" Font-Bold="True" Font-Size="Medium" ForeColor="Purple" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Reset1" 
        style="width: 70px; font-size: medium; color: #800080; font-weight: bold;" 
        type="reset" value="Reset" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }



        

// ]]>
    </script>
    </span>
</asp:Content>

