<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="QuizPSD.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="labelEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="labelPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
    </div>
       <div>
        <asp:CheckBox ID="CheckBox" runat="server" />Remember Me
    </div>
    <div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" />
        <asp:Label ID="result" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
