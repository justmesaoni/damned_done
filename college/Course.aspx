<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="drp_Course" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="drp_Course_SelectedIndexChanged" Width="184px">
    <asp:ListItem>select course</asp:ListItem>
    <asp:ListItem>B.tech</asp:ListItem>
    <asp:ListItem>M.tech</asp:ListItem>
    <asp:ListItem>B.A</asp:ListItem>
    <asp:ListItem>M.A</asp:ListItem>
    <asp:ListItem>M.B.B.S</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<br />
<br />
<asp:GridView ID="GridView8" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
</asp:Content>

