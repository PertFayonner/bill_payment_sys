<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NetBanking.aspx.cs" Inherits="BPS.NetBanking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 374px;
            color: #FFFF99;
        }
        .style3
        {
            width: 140px;
        }
    </style>
</head>
<body background="http://en.finance.sia-partners.com/files/2014/04/Banque.jpg">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp; Net Banking</div>
    <table class="style1">
        <tr>
            <td align="right" class="style2" style="font-size: xx-large">
                <strong>Choose your Bank</strong></td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="157px">
                    <asp:ListItem></asp:ListItem>
<asp:ListItem>Canara Bank</asp:ListItem>
                    <asp:ListItem>CitiBank</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
<asp:ListItem>IDBI Bank</asp:ListItem>
                    <asp:ListItem>ICICI BankIndian Overseas Bank</asp:ListItem>
                    <asp:ListItem>Kotak Mahindra Bank</asp:ListItem>
                    <asp:ListItem>HDFC Bank</asp:ListItem>
                    <asp:ListItem>HSBC Bank</asp:ListItem>
                    <asp:ListItem>State Bank of India</asp:ListItem>
                    <asp:ListItem>State Bank of Hyderabad</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Please Select a Bank" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Make Payment" 
            onclick="Button1_Click" />
        </p>
    </form>
</body>
</html>


