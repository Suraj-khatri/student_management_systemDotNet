<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 149px;
        }
        .auto-style12 {
            margin-left: 37px;
        }
        .auto-style13 {
            margin-right: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        this is feedback page.</p>
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">
                <asp:Label ID="email" runat="server" Text="Enter Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="fedback" runat="server" Text="FeedBack"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="btnFeedback" runat="server" OnClick="btnFeedback_Click" Text="Feedback" Width="77px" />
                <asp:Button ID="btnview" runat="server" CssClass="auto-style12" Text="View Feedback" Width="135px" OnClick="btnview_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:GridView ID="gvf" runat="server" CssClass="auto-style13" Width="336px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

