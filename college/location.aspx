<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="College" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-color: #FFFFFF; font-family: 'Footlight MT Light'; color: #FFFFFF; font-size: large; background-image: url('images1/dark_colors_background-wallpaper-1366x768.jpg');">
    &nbsp;<asp:DropDownList ID="drp_reg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_reg_SelectedIndexChanged" Width="200px" OnTextChanged="drp_reg_TextChanged">
        <asp:ListItem>--Region--</asp:ListItem>
        <asp:ListItem>North India</asp:ListItem>
        <asp:ListItem>South India</asp:ListItem>
        <asp:ListItem>East India</asp:ListItem>
        <asp:ListItem>West India</asp:ListItem>
    </asp:DropDownList>
&nbsp;</p>
<p style="background-color: #FFFFFF; font-family: 'Footlight MT Light'; color: #FFFFFF; font-size: large; background-image: url('images1/dark_colors_background-wallpaper-1366x768.jpg');">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView_location" runat="server" CellPadding="4" Height="197px" Width="499px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</p>
<p style="background-color: #FFFFFF; font-family: 'Footlight MT Light'; color: #FFFFFF; font-size: large; background-image: url('images1/dark_colors_background-wallpaper-1366x768.jpg');">
        <br />
        <br />
</p>
</asp:Content>

