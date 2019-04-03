<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="QuizPSD.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%-- name email  password gender birth phone address --%>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="nameTxt" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="emailTxt" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="passwordTxt" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label>
                <asp:RadioButtonList ID="radioButtonGender" runat="server">
                    <asp:ListItem Text="Male" Value="male" Selected ="True"/>
                    <asp:ListItem Text="Female" Value="female" />
                </asp:RadioButtonList>
            </div>

            <div>
                <asp:Label ID="Label5" runat="server" Text="BirthDate: "></asp:Label>
                <asp:TextBox ID="birthDateTxt" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label6" runat="server" Text="Phone Number: "></asp:Label>
                <asp:TextBox ID="phoneTxt" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label7" runat="server" Text="Address: "></asp:Label>
                <asp:TextBox ID="addressTxt" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="RegisterBtn" OnClick="RegisterBtn_Click" 
                    runat="server" Text="Register" />
                <asp:Label ID="result" runat="server" Text=""></asp:Label>
            </div>
    </div>
    </form>
</body>
</html>
