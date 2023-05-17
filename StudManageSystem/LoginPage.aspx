<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 179px;
        }
        .auto-style13 {
            width: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #669900; font-family: 'Courier New', Courier, monospace; font-size: xx-large; font-style: normal; text-decoration: underline; text-align: center;">
        Login Page</p>
    <table class="auto-style10">
        <tr>
            <td>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style12">User Name</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter a valid user name" ForeColor="Red" SetFocusOnError="True">Enter a valid user name</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Pasword</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter a valid password" ForeColor="Red" SetFocusOnError="True">Enter a valid password</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">User Type</td>
                        <td class="auto-style13">
                            <asp:ListBox ID="ListBox1" runat="server" Height="52px" Width="70px">
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Faculty</asp:ListItem>
                            </asp:ListBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">
                            <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" Width="71px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

