<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer Master.aspx.cs" Inherits="Customer_Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 325px;
        }
        
        .auto-style7 {
            width: 325px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }

        .auto-style9 {
            width: 193px;
        }
        .auto-style10 {
            width: 278px;
        }
        .auto-style12 {
            height: 29px;
            width: 284px;
        }
        .auto-style15 {
            width: 426px;
        }

        .auto-style16 {
            width: 284px;
        }

        .auto-style24 {
            margin-top: 60px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFFF66" BorderColor="Blue" BorderStyle="Solid" BorderWidth="3px" ForeColor="#000066">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style10">
                            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicMenuStyle BackColor="#FFFBD6" />
                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/home.aspx" Text="home" Value="home"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Customer Master.aspx" Text="Customer" Value="Customer"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Product_Group.aspx" Text="Product g" Value="Product g"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Users.aspx" Text="Logout" Value="Logout"></asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticSelectedStyle BackColor="#FFCC66" />
                            </asp:Menu>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                   
                </table>
                   
                
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel1" runat="server">   <div>
           <center>
               <asp:Label ID="Label9" runat="server" Text="Customer Master" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Underline="True" ForeColor="#000066"></asp:Label>
           </center>
        </div>
    <div>
    
        <table style="width:100%; height: 293px;">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Customer Name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCNM" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust Address:"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                    <asp:TextBox ID="TxtCADDR" runat="server" Width="280px" TextMode="MultiLine"></asp:TextBox>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust City:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TxtCCITY" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust Mail:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCMAIL" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust Phno:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCPHNO" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust Pincode:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCPIN" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Text="Cust Dist:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCDIST" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text="Registration Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtregdt" runat="server" Width="280px" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#6699FF" BorderColor="#6699FF" Font-Bold="True" Font-Italic="True" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="108px" />
                    <asp:Label ID="Lblmsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div></asp:Panel>
        <div>
            <center>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id" CssClass="auto-style24">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Check">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="cust_name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="cust_address" HeaderText="Address" />
                        <asp:BoundField DataField="cust_city" HeaderText="City" />
                        <asp:BoundField DataField="cust_mail" HeaderText="Mail" />
                        <asp:BoundField DataField="cust_phno" HeaderText="Contact no" />
                        <asp:BoundField DataField="cust_pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="cust_dist" HeaderText="District" />
                        <asp:BoundField DataField="registration_dt" HeaderText="Registration Date" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Btnedit" runat="server" ForeColor="#FF0066" OnClick="Btnedit_Click" Text="edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Btndel" runat="server" Text="delete" OnClick="Btndel_Click" ForeColor="Black"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
