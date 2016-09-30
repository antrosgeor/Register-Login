<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Regist_Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-family: calibri;
        }
        .auto-style2 {
            width: 100%;
            height: 149px;
        }
        .auto-style3 {
            width: 215px;
        }
        .auto-style4 {
            width: 205px;
        }
        .auto-style5 {
            width: 215px;
            font-family: calibri;
            text-align: right;
        }
        .auto-style6 {
            font-family: calibri;
        }
        .auto-style7 {
            font-weight: normal;
            font-size: small;
        }
        .auto-style8 {
            width: 100%;
            margin-right: 0px;
            height: 150px;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1">Company Name</h1>
    
    </div>
        <p class="auto-style1">
            Login Pages (<span class="auto-style7"> UserName </span>)</p>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style5">User Name : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="TextBoxUserName" CssClass="auto-style6" ErrorMessage="Please enter a valid UserName address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style6" ErrorMessage="You must fill in a password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" Width="100px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLinkRegister" runat="server" ForeColor="#0066FF" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LabelLogin" runat="server" ForeColor="#33CC33"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <p style="text-align: center">
            Login Pages (<span class="auto-style7"> Email </span>)</p>
        <p style="text-align: center">
            &nbsp;</p>
        <table class="auto-style8" align="center">
            <tr>
                <td class="auto-style5">Email : </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please enter a valid Email address" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Write a valid EMAIL Example@mail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password : </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPassword2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword2" runat="server" ErrorMessage="You must fill in a password" ForeColor="Red" ControlToValidate="TextBoxPassword2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLinkRegister0" runat="server" ForeColor="#0066FF" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="LabelLogin1" runat="server" ForeColor="#33CC33"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
