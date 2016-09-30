<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Regist_Login.Register" %>

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
            height: 477px;
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            width: 192px;
            font-weight: bold;
            text-align: right;
            font-family: calibri;
        }
        .auto-style5 {
            width: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <h1 class="auto-style1">Company Name</h1>
    
    </div>
        <p class="auto-style1">
            Register Pages</p>
    
    </div>
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style4">UserName :&nbsp; </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter a valid UserName address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email : </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter a valid Email address" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Write a valid EMAIL Example@mail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">Create a password : </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass1" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="You must fill in a password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;Confirn your password : </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirnPassword" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="You must fill in a Confirn password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Confirn Pass mast be the same Pass" ForeColor="Red" ValidateRequestMode="Enabled"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">General : </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownListGeneral" runat="server">
                    <asp:ListItem>I am..</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorGeneral" runat="server" ControlToValidate="DropDownListGeneral" ErrorMessage="Select General" ForeColor="Red" InitialValue="I am.."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Birthday : </td>
            <td class="auto-style5">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="86px" Width="205px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Mobile Number : </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxNumber" runat="server" MaxLength="10" TextMode="Phone" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server" ControlToValidate="TextBoxNumber" ErrorMessage="Please enter a valid Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Location : </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownListCountry" runat="server">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>French</asp:ListItem>
                    <asp:ListItem>ITALY</asp:ListItem>
                    <asp:ListItem>GERMAN</asp:ListItem>
                    <asp:ListItem>ENGLISH</asp:ListItem>
                    <asp:ListItem>GREECE</asp:ListItem>
                    <asp:ListItem>SPANISH</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select Country" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonRegister_Click" Text="Register" Width="150px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="LabelRegister" runat="server" ForeColor="Lime" Width="239px"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" SelectCommand="SELECT * FROM [regist]"></asp:SqlDataSource>
    </form>
    </body>
</html>
