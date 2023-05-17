<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewFaculty.aspx.cs" Inherits="ViewFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        margin-left: 238px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p style="vertical-align: top">
                                        <asp:GridView ID="gvadminFaculty" runat="server" CssClass="auto-style4">
                                        </asp:GridView>
</p>
                                </asp:Content>


