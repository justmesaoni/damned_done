<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="campus.aspx.cs" Inherits="campus" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="drp_college" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_college_SelectedIndexChanged" Width="174px">
        <asp:ListItem>Select</asp:ListItem>
    <asp:ListItem>Ahmedabad University</asp:ListItem>
    <asp:ListItem>Aligarh Muslim University</asp:ListItem>
    <asp:ListItem>All India Institute of Medical Science</asp:ListItem>
    <asp:ListItem>Amity University</asp:ListItem>
    <asp:ListItem>Andhra University</asp:ListItem>
    <asp:ListItem>Anna University</asp:ListItem>
    <asp:ListItem>Assam University</asp:ListItem>
</asp:DropDownList>
<br />
<br />
    <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
            <img alt="" src="image/Ahmadabaduniv.jpg" height="350" style="width: 979px" />
            <cc1:Accordion ID="Accordion1" runat="server">
            </cc1:Accordion>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Image ID="Image1" runat="server" Height="403px" ImageUrl="~/image/Ali.jpg" Width="978px" />
        </asp:View>
        <br />
        <br />
        <asp:View ID="View3" runat="server">
            <asp:Image ID="Image2" runat="server" Height="526px" ImageUrl="~/image/aiim.jpg" Width="905px" />
        </asp:View>
        <br />
        <asp:View ID="View4" runat="server">
            <img alt="" src="image/amity.jpg" height="350" style="width: 936px" width="500" />
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:Image ID="Image3" runat="server" Height="350px" ImageUrl="~/image/andhrauniv.jpeg" Width="500px" />
        </asp:View>
        <asp:View ID="View6" runat="server">
            <asp:Image ID="Image4" runat="server" Height="350px" ImageUrl="~/image/anna.jpeg" style="margin-right: 278px" Width="500px" />
        </asp:View>
        <br />
        <asp:View ID="View7" runat="server">
            <asp:Image ID="Image5" runat="server" Height="350px" ImageUrl="~/image/assamuniv.jpg" style="margin-right: 148px" Width="800px" />
        </asp:View>
        <br />
        <br />
    </asp:MultiView>
    <cc1:Accordion ID="Accordion2" runat="server">
    </cc1:Accordion>
<br />
</asp:Content>

