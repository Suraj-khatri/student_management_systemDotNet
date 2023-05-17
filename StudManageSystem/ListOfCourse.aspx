<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="ListOfCourse.aspx.cs" Inherits="ListOfCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Courier New', Courier, monospace; font-size: xx-large; color: #008000; font-weight: bold; text-decoration: underline;">
    List of courses</p>
<asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Square" ForeColor="#990000">
    <asp:ListItem>BSC.CSIT</asp:ListItem>
    <asp:ListItem>BCA</asp:ListItem>
</asp:BulletedList>
<p>
</p>
</asp:Content>

