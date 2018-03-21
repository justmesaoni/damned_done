<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
        width: 322px;
        text-align: justify;
    }
    .auto-style12 {
        }
        .auto-style13 {
            width: 369px;
            height: 176px;
            text-align: justify;
        }
        .auto-style14 {
            height: 176px;
        }
        .auto-style15 {
            width: 322px;
            text-align: left;
            height: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style15">
            <asp:Image ID="Image1" runat="server" Height="241px" ImageAlign="Top" ImageUrl="~/images1/students.jpg" Width="321px" />
        </td>
        <td class="auto-style13" style="background-color: #00FFFF; ">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#006600" Text="Consultancy"></asp:Label>
            <br />
            <br />
            We provide consultancy services based on your interested field of Education. Our consultancy <strong>aims</strong> to provide you with a <strong>perfect</strong> campus to build your future as you want it to be. We include the details about all the leading colleges in India and with the courses they provide based on various criteria for admission.<br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton24" runat="server" PostBackUrl="~/Application Guide.aspx">Application Guide</asp:LinkButton>
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style14" colspan="2" style="background-color: #9966FF">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF99FF" Text="Feedback"></asp:Label>
            <br />
            <br />
            Submit your queries to our specialists and you can also give your reviews in our <strong>Student Help</strong> section.<br />
            <br />
            Help us, so that we can Help You.<br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton25" runat="server" ForeColor="#FFFF99" PostBackUrl="~/Student_help.aspx">Student Help</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style11" style="background-color: #006666">
            <asp:Label ID="Label1" runat="server" ForeColor="#CCCCFF" style="font-weight: 700" Text="Register"></asp:Label>
            <br />
            <br />
            Register to help us know your details and provide you with the best suited colleges based on the <strong>nearest</strong> <strong>location</strong>, <strong>available quota</strong> and more. Please visit the <strong>Registration</strong> section of our website to do the needful.<br />
            <br />
            <asp:LinkButton ID="LinkButton23" runat="server" PostBackUrl="~/Registration.aspx" ForeColor="Aqua">Registration</asp:LinkButton>
            <br />
            <br />
        </td>
        <td class="auto-style12" colspan="2">
            <asp:Image ID="Image2" runat="server" Height="240px" ImageUrl="~/images1/students1.jpg" Width="388px" />
        </td>
        <td>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" OnAdCreated="AdRotator1_AdCreated" />
            <asp:Label ID="Label4" runat="server" Font-Italic="True" Text="Advertisements"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

