<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyMasterPage.master" AutoEventWireup="true" CodeFile="GetStudentsDetails.aspx.cs" Inherits="GetStudentsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 68px;
        }
        .auto-style4 {
            margin-left: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Enter Age:
    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnsearch" runat="server" CssClass="auto-style3" OnClick="btnsearch_Click" Text="Search" />
    <br />
    <asp:GridView ID="gvGetStudent" runat="server" CssClass="auto-style4">
    </asp:GridView>
&nbsp;
</asp:Content>

