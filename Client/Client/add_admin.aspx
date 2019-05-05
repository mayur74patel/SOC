<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_admin.aspx.cs" Inherits="Client.add_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
            <tr>
                <td>
                    <br />
                    <br />
                </td>
                <td>Online Food Recipe Blog</td>
            </tr>
            <tr>
                <td class="auto-style2">User Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" TextMode="multiline"  runat="server"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password<br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" TextMode="multiline"  runat="server" CssClass="auto-style5"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBox4" TextMode="multiline"  runat="server" CssClass="auto-style5"  ></asp:TextBox>
                </td>
            </tr>
                    </table>
        
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Add Admin" Width="104px" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
