<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="BPS.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
  
    background-repeat: no-repeat;
   
  
 background-image:url('images/user.jpg');
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
            height: 909px;
        }
        #form1
        {
            height: 754px;
            margin-top: 0px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 240px; position: relative; top: 232px; left: -197px; height: 466px; width: 636px;">
    
        <br />
        <br />
        <br />
        
        <br />
        
        <br />
        
        <br />
        
        <br />
        
        <br />
        
        <br />
        
        <br />
        <asp:Label ID="Label1" runat="server" Text="Username" Font-Size="XX-Large" 
            ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxUname" runat="server" Height="45px" Width="206px" 
            style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="XX-Large" 
            ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Height="45px" 
            Width="213px" ontextchanged="TextBoxPass_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
            Width="139px" Font-Bold="True" Font-Size="Large" ForeColor="#BA1234" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Successfully Logged In" 
            Visible="False"></asp:Label>
        <br />
        <br />
&nbsp;
    
    </div>
    </form>
</body>
</html>
