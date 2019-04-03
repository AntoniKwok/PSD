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
            <h3>REGISTER</h3>
            <asp:LinkButton Text="Home" runat="server" id="backHome" OnClick="backHome_Click"/>

            <div>
                <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="txtName" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" Text="" TextMode="Password"></asp:TextBox>
            </div>
        
            <div>
                <asp:Label ID="Label8" runat="server" Text="Confirm Password: "></asp:Label>
                <asp:TextBox ID="txtConfirm" runat="server" Text="" TextMode="Password"></asp:TextBox>
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
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label6" runat="server" Text="Phone Number: "></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" Text=""></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label7" runat="server" Text="Address: "></asp:Label>
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnRegister" OnClick="RegisterBtn_Click" 
                    runat="server" Text="Register" />
                <asp:Label ID="result" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
