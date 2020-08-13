<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Csv_file.aspx.cs" Inherits="Csv_file" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 133px;
        }
        .auto-style2 {
            width: 291px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#990000" Text="Choose file:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#990000" Text="Description:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtdesc" runat="server" Height="17px" TextMode="MultiLine" Width="175px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Btnsave" runat="server" OnClick="Btnsave_Click" Text="Submit" Width="69px" />
                    <asp:Label ID="Lblmsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" Height="185px" RepeatColumns="4" RepeatDirection="Horizontal" style="margin-left: 308px" Width="717px">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="78px" />
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
