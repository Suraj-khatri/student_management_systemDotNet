<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Subjects.aspx.cs" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #800000">
        Select Subjects</p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080; text-decoration: underline;">
        Compulsary Subjects</p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        <asp:CheckBoxList ID="cblSubjects" runat="server" ForeColor="#0066FF">
            <asp:ListItem>Compiler</asp:ListItem>
            <asp:ListItem>E-Commerce</asp:ListItem>
            <asp:ListItem>E-Commerce</asp:ListItem>
            <asp:ListItem>NET Centric Computing</asp:ListItem>
            <asp:ListItem>Software Engineering</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        Elective Subjects</p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        <asp:RadioButtonList ID="rblsubjects" runat="server" ForeColor="#0066FF">
            <asp:ListItem>Applied Logic</asp:ListItem>
            <asp:ListItem>Automation and Robitics</asp:ListItem>
            <asp:ListItem>Cognitive Science</asp:ListItem>
            <asp:ListItem>Computer Hardware Design</asp:ListItem>
            <asp:ListItem>Neural Networks</asp:ListItem>
            <asp:ListItem>Technical Writing</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        <asp:Button ID="btnconfirm" runat="server" CssClass="auto-style4" OnClick="btnconfirm_Click" Text="confirm" />
    </p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    <p style="font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: bold; color: #008080">
        &nbsp;</p>
</asp:Content>

