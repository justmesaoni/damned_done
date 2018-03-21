<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Disability.aspx.cs" Inherits="Disability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:DropDownList ID="drp_Disability" runat="server" OnSelectedIndexChanged="drp_Disability_SelectedIndexChanged" Width="200px" AutoPostBack="True">
        <asp:ListItem>Disability?</asp:ListItem>
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
    </asp:DropDownList>
    <br />
</p>
<p>
    <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

