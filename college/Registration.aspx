<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        width: 507px;
    }
    .auto-style11 {
    }
    .auto-style12 {
        width: 551px;
    }
    .auto-style13 {
        width: 168px;
    }
        .auto-style16 {
            text-align: left;
            width: 110px;
        }
        .auto-style25 {
            width: 126px;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            font-size: large;
            color: #CC0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style12">
            <table style="width: 95%">
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="Label9" runat="server" style="font-weight: 700; font-style: italic; color: #970000" Text="Personal Information"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        *</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" style="color: #CC0000; font-weight: 700" CssClass="auto-style26" Display="Dynamic" Font-Bold="False">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txt_name" OnServerValidate="CustomValidator2_ServerValidate" style="font-weight: 700; color: #CC0000; font-size: large" Display="Dynamic">!</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        *</td>
                    <td class="auto-style9">
                        <asp:UpdatePanel ID="UpdatePanel1" width="42px" runat="server">
                            <ContentTemplate><asp:TextBox ID="txt_mail" runat="server" OnTextChanged="txt_mail_TextChanged" style="margin-left: 0px" TextMode="Email"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_mail" style="color: #CC0000; font-weight: 700" CssClass="auto-style26" Display="Dynamic">*</asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" style="font-weight: 700; color: #CC0000" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid E-mail</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="lbl_mail_msg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#990033" Visible="False"></asp:Label>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        *</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_pwd" style="color: #CC0000; font-weight: 700" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                    </td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" Width="120px"></asp:TextBox></td>
                    <td></td>
                </tr>
            </table>
        </td>
        <td>
            <table  style="height: 175px">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Fathers Name"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txt_fname" style="font-weight: 700; color: #CC0000; font-size: large" OnServerValidate="CustomValidator4_ServerValidate">!</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_dob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_cpwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="font-weight: 700">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_cpwd" style="color: #CC0000; font-weight: 700; " CssClass="auto-style26">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButtonList ID="rdolist_gender" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
&nbsp;(fields marked with <span class="auto-style27"><strong>*</strong></span> are <strong>compulsory</strong>)<br />
<br />
<table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Maroon" Text="Academics Details"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Board"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_board" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_board" MaximumValue="Z" MinimumValue="A" style="font-weight: 700; color: #CC0000; font-size: large">!</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="10th Percentage"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_10per" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txt_10per" MaximumValue="100" MinimumValue="35" style="font-weight: 700; color: #CC0000; font-size: large" Type="Double">!</asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="School"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_school" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txt_school" MaximumValue="Z" MinimumValue="A" style="font-weight: 700; color: #CC0000; font-size: large">!</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="12th Percentage"></asp:Label>
                        *</td>
                    <td>
                        <asp:TextBox ID="txt_12per" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txt_12per" MaximumValue="100" MinimumValue="35" style="font-weight: 700; color: #CC0000; font-size: large" Type="Double">!</asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label15" runat="server" Text="Course Persuaded"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="rdolist_course" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Arts</asp:ListItem>
                <asp:ListItem>Commerce</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
</table>
<br />
<table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label18" runat="server" Text="Interested In"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drop_opt" runat="server" style="text-align: center; margin-left: 0px" Width="138px" Height="30px">
                <asp:ListItem>Select Course</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>MSC</asp:ListItem>
                <asp:ListItem>M.tech</asp:ListItem>
                <asp:ListItem>B.tech</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
</table>
<br />
<br />
<table class="auto-style1">
    <tr>
        <td style="text-align: center">
            <asp:Button ID="btn_submit" runat="server" BackColor="#FFCC99" OnClientClick="Select " Text="Submit" Width="150px" OnClick="btn_submit_Click" Font-Bold="True" Font-Names="Georgia" ForeColor="Maroon" Height="30px" PostBackUrl="~/Login.aspx" />
            <asp:HyperLink ID="Log" runat="server" Enabled="False" EnableViewState="False" NavigateUrl="~/Login.aspx">LOG IN</asp:HyperLink>
            <br />
            <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" Visible="False" Width="100%"></asp:Label>
        </td>
    </tr>
</table>
<br />
<br />
</asp:Content>

