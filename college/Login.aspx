<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeApp.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 26px;
        }
    .auto-style11 {
        height: 26px;
        text-align: left;
    }
        .auto-style12 {
            height: 26px;
            text-align: left;
            width: 371px;
        }
        .auto-style13 {
            width: 371px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Maroon" Text="Username"></asp:Label>
            &nbsp;<strong>(E-mail)</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_user" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Text="Password" style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBox ID="chk_remember" runat="server" Text="Remember me" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Submit" runat="server" Text="Log In" OnClick="btn_Submit_Click1" Width="100px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lbl_welmsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#333399" Height="56px" style="text-align: left" Visible="False" Width="100%"></asp:Label>
            </td>
        </tr>
    </table>
    <p style="text-align: left">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

