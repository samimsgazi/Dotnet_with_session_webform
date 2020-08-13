<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 84px;
        }
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            width: 391px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
         <table style="width:100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000066" Text="Users"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtuser" runat="server" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtuser" ErrorMessage="Enter username" ForeColor="#CC0000" ValidationGroup="v"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtuser" ErrorMessage="Not correct syntax(A-Z,a-z,0-9)" ForeColor="#CC0000" ValidationExpression="^[A-Z a-z 0-9$]{8,8}" ValidationGroup="v"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000066" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtupw" runat="server" Width="268px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtupw" ErrorMessage="Enter your Password" ForeColor="#CC0000" ValidationGroup="v "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <center>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#000042" OnClick="Button1_Click" Text="Submit" Width="87px" CausesValidation="False" />
                    
                    <asp:Label ID="Lblmsg" runat="server"></asp:Label>
                    </center>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    
       
    </div>
    </form>
</body>
</html>
