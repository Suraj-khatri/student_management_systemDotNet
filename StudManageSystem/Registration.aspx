<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
    }
    .auto-style11 {
        width: 176px;
    }
    .auto-style12 {
        width: 316px;
    }
    .auto-style13 {
        width: 176px;
        height: 23px;
    }
    .auto-style14 {
        width: 316px;
        height: 23px;
    }
    .auto-style15 {
        height: 23px;
    }
    .auto-style16 {
        width: 176px;
        height: 27px;
    }
    .auto-style17 {
        width: 316px;
        height: 27px;
    }
    .auto-style18 {
        height: 27px;
    }
    .auto-style19 {
        width: 176px;
        height: 26px;
    }
    .auto-style20 {
        width: 316px;
        height: 26px;
    }
    .auto-style21 {
        height: 26px;
    }
    .auto-style22 {
        margin-left: 21px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="!; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-style: oblique; color: #CC3300; text-align: center; letter-spacing: normal;">
        REGISTER HERE!!!</p>
<table class="auto-style10">
    <tr>
        <td class="auto-style19">Name:</td>
        <td class="auto-style20">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style11">Address:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Birth Date:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
        </td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style16">Gender:</td>
        <td class="auto-style17">
            <asp:RadioButton ID="rbtnmale" runat="server" GroupName="Gender" Text="Male" />
&nbsp;<asp:RadioButton ID="rbtnfemale" runat="server" GroupName="Gender" Text="Female" />
        </td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style11">Hobbies:</td>
        <td class="auto-style12">
            <asp:CheckBox ID="cbsing" runat="server" Text="Singing" />
            <asp:CheckBox ID="cbdance" runat="server" Text="Dancing" />
            <asp:CheckBox ID="cbread" runat="server" Text="Reading" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Age:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="Enter age in the range of 18 to 25" ForeColor="Red" MaximumValue="25" MinimumValue="18" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">User Name:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter user name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Password</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter your password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Confirm Password:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ErrorMessage="password donot match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Email:</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter a email in proper format." ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">User Type:</td>
        <td class="auto-style12">
            <asp:DropDownList ID="ddlutype" runat="server">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Faculty</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style19">Mobile Number</td>
        <td class="auto-style20">
            <asp:TextBox ID="txtmblno" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtmblno" ErrorMessage="Enter valid mobile number" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="65px" style="height: 26px" />
            <asp:Button ID="btnreset" runat="server" CssClass="auto-style22" OnClick="btnreset_Click" Text="Reset" Width="69px" CausesValidation="False" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>

