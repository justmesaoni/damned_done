<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="college.aspx.cs" Inherits="Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="269px" Width="952px" DataSourceID="SqlDataSource2">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
            <asp:BoundField DataField="c_perc" HeaderText="c_perc" SortExpression="c_perc" />
            <asp:BoundField DataField="c_prog" HeaderText="c_prog" SortExpression="c_prog" />
            <asp:BoundField DataField="c_reg" HeaderText="c_reg" SortExpression="c_reg" />
            <asp:BoundField DataField="c_type" HeaderText="c_type" SortExpression="c_type" />
            <asp:BoundField DataField="c_sport" HeaderText="c_sport" SortExpression="c_sport" />
            <asp:BoundField DataField="c_phys" HeaderText="c_phys" SortExpression="c_phys" />
            <asp:BoundField DataField="c_ethnicity" HeaderText="c_ethnicity" SortExpression="c_ethnicity" />
            <asp:BoundField DataField="c_place" HeaderText="c_place" SortExpression="c_place" />
            <asp:BoundField DataField="c_tuition" HeaderText="c_tuition" SortExpression="c_tuition" />
            <asp:BoundField DataField="c_rate" HeaderText="c_rate" SortExpression="c_rate" />
            <asp:BoundField DataField="c_btech" HeaderText="c_btech" SortExpression="c_btech" />
            <asp:BoundField DataField="c_mtech" HeaderText="c_mtech" SortExpression="c_mtech" />
            <asp:BoundField DataField="c_ma" HeaderText="c_ma" SortExpression="c_ma" />
            <asp:BoundField DataField="c_ba" HeaderText="c_ba" SortExpression="c_ba" />
            <asp:BoundField DataField="c_mbbs" HeaderText="c_mbbs" SortExpression="c_mbbs" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString7 %>" SelectCommand="SELECT [c_id], [c_name], [c_perc], [c_prog], [c_reg], [c_type], [c_sport], [c_phys], [c_ethnicity], [c_place], [c_tuition], [c_rate], [c_btech], [c_mtech], [c_ma], [c_ba], [c_mbbs] FROM [college_info]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

