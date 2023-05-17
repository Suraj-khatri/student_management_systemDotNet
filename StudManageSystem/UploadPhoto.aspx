<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Upload your Photo</p>
<p>
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p>
    <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" CssClass="auto-style4" />
</p>
    <p>
        <asp:Image ID="imgupload" runat="server" Height="150px" Width="150px" />
    </p>
</asp:Content>

