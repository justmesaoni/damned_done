<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="contact Us.aspx.cs" Inherits="contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style13 {
            font-size: medium;
        }
    .auto-style14 {
        color: #FF3300;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <span class="auto-style11"><strong><em>Contact Us:</em></strong></span></p>
    <p>
        Thank you for your interest in our services.</p>
    <p class="auto-style12">
        <em><strong>College Information Update</strong>:</em></p>
    <p>
        If you would like to update your college&#39;s information ,please complete our response and submit it to&nbsp;
        <asp:LinkButton ID="LinkButton24" runat="server" PostBackUrl="~/college.aspx">College and University Information</asp:LinkButton>
        .</p>
    <p class="auto-style13" style="text-decoration: underline; font-style: italic">
        <strong>Editorial Board:</strong></p>
    <p style="font-size: medium">
        If you have any questions you can go to our
        <asp:LinkButton ID="LinkButton25" runat="server" PostBackUrl="~/Student_help.aspx">Student Help</asp:LinkButton>
&nbsp;section which contains most of the FAQs(Frequently Asked Questions).</p>
    <p style="font-size: medium; text-decoration: underline; font-style: italic; font-weight: 700">
        Feedback:</p>
    <p style="font-size: medium">
        To provide us with your feedback,please complete our response form and submit it with your valueable opinion.</p>
    <p style="font-size: medium" class="auto-style14">
        <strong>Developers </strong></p>
<p style="font-size: medium" class="auto-style14">
        <asp:Image ID="Image1" runat="server" Height="291px" ImageUrl="~/images1/developers.jpg" Width="381px" />
</p>
    <p style="text-decoration: underline">
        <strong>Varsha Narayan(Right most):-</strong> Skilled in Data mining,Security and binding the website.</p>
<p style="text-decoration: underline">
        <strong>Saoni Deb(Front):-</strong>Skilled in Coding,Finding Solution to problems and supervising the view of the page.</p>
<p style="text-decoration: underline">
        <strong>Ayan Bhattacharjee(Left Most):-</strong> Skilled in Developing Algorithms and Control Flow.</p>
<p style="text-decoration: underline">
        <strong>Sachin Kumar(Middle Back):-</strong>Skilled in Linking Database,Designing and Compilation.</p>
    <p style="text-decoration: underline">
        &nbsp;</p>
</asp:Content>

