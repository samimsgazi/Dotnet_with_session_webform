<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product_bill_master.aspx.cs" Inherits="Product_bill_master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 241px;
        }
        .auto-style2 {
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Bill Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtBillDt" runat="server" TextMode="Date" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Customer Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCnm" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtAddr" runat="server" TextMode="MultiLine" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCity" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text="Dist"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtdist" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtpin" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Text="Contact No"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtphno" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text="Total Amount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtTAmt" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Text="Reference"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtref" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Bold="True" ForeColor="White" Text="Add" Width="67px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
