<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Program_offered.aspx.cs" Inherits="Program_offered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" DataKeyNames="c_id">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
        <asp:BoundField DataField="c_perc" HeaderText="c_perc" SortExpression="c_perc" />
        <asp:BoundField DataField="c_prog" HeaderText="c_prog" SortExpression="c_prog" />
        <asp:BoundField DataField="c_reg" HeaderText="c_reg" SortExpression="c_reg" />
        <asp:BoundField DataField="c_type" HeaderText="c_type" SortExpression="c_type" />
        <asp:BoundField DataField="c_sport" HeaderText="c_sport" SortExpression="c_sport" />
        <asp:BoundField DataField="c_phys" HeaderText="c_phys" SortExpression="c_phys" />
        <asp:BoundField DataField="c_ba" HeaderText="c_ba" SortExpression="c_ba" />
        <asp:BoundField DataField="c_ma" HeaderText="c_ma" SortExpression="c_ma" />
        <asp:BoundField DataField="c_mtech" HeaderText="c_mtech" SortExpression="c_mtech" />
        <asp:BoundField DataField="c_btech" HeaderText="c_btech" SortExpression="c_btech" />
        <asp:BoundField DataField="c_rate" HeaderText="c_rate" SortExpression="c_rate" />
        <asp:BoundField DataField="c_tuition" HeaderText="c_tuition" SortExpression="c_tuition" />
        <asp:BoundField DataField="c_place" HeaderText="c_place" SortExpression="c_place" />
        <asp:BoundField DataField="c_ethnicity" HeaderText="c_ethnicity" SortExpression="c_ethnicity" />
        <asp:BoundField DataField="c_mbbs" HeaderText="c_mbbs" SortExpression="c_mbbs" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString6 %>" SelectCommand="SELECT [c_id], [c_name], [c_perc], [c_prog], [c_reg], [c_type], [c_sport], [c_phys], [c_ba], [c_ma], [c_mtech], [c_btech], [c_rate], [c_tuition], [c_place], [c_ethnicity], [c_mbbs] FROM [college_info]"></asp:SqlDataSource>
</asp:Content>

