<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product Group_Edit_Delete.aspx.cs" Inherits="Product_Group_Edit_Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 374px;
            height: 26px;
        }
        .auto-style2 {
            width: 343px;
        }
        .auto-style4 {
            width: 292px;
            height: 26px;
        }
        .auto-style5 {
            width: 222px;
        }
        .auto-style6 {
            width: 343px;
            height: 26px;
        }
        .auto-style7 {
            width: 222px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 297px;
            height: 26px;
        }
        .auto-style10 {
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
                        <td class="auto-style1"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style9">
                            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicMenuStyle BackColor="#FFFBD6" />
                                <DynamicSelectedStyle BackColor="#FFCC66" />
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="home" Value="home"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Customer Master.aspx" Text="Customer" Value="Customer"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Product_Group.aspx" Text="Product g" Value="Product g"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Users.aspx" Text="Logout" Value="Logout"></asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticSelectedStyle BackColor="#FFCC66" />
                            </asp:Menu>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                   
                </table>
                   
                
            </asp:Panel>
        </div>
        <center>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Underline="True" ForeColor="#000066" Text="Product group"></asp:Label>
        </center>
        
    <div>
    <div>
            <asp:Panel ID="Panel1" runat="server" Height="89px">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style7">
                            </td>
                        <td class="auto-style8">
                            
                        </td>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Group Name"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TxtPGN0" runat="server" Width="300px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style15">
                            <asp:Button ID="BtnUpdate" runat="server" BackColor="#99CCFF" Font-Bold="True" ForeColor="White" Text="Update" Width="89px" OnClick="BtnUpdate_Click" />
                        </td>
                        <td class="auto-style13"></td>
                    </tr>
                   
                </table>
            </asp:Panel>
        </div>
    </div>
        <div>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="prgroup_id" Height="255px" CssClass="auto-style10">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Check">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="prod_group_name" HeaderText="Product Name" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Btnedit" runat="server" Text="Edit" OnClick="Btnedit_Click"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Btndel" runat="server" Text="Delete" OnClick="Btndel_Click"></asp:Button>
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
