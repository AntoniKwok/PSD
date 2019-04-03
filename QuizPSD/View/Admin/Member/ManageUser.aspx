<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="QuizPSD.View.Admin.Member.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <h4 style="width: 115px;">All of User Data</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>View Members</h3>
    <div>
        <asp:HyperLink ID="home" runat="server" NavigateUrl="~/View/Index.aspx">
            Home
        </asp:HyperLink>
    </div>
    <asp:GridView ID="allUsers" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Name" DataField="Name"/>
            <asp:BoundField HeaderText="Email" DataField="Email"/>
            <asp:BoundField HeaderText="Phone Number" DataField="PhoneNumber"/>
            <asp:BoundField HeaderText="Role" DataField="Role"/>

            <asp:TemplateField HeaderText="Set Role">
                <ItemTemplate>
                    <asp:LinkButton ID="setAdmin" runat="server"
                            Visible='<%# (Eval("Role")).ToString().Equals("member") %>'
                            CommandArgument='<%#Eval("Email")%>' OnClick="setAdmin_Click">
                        As Admin
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                
            <asp:TemplateField HeaderText="Delete User">
                <ItemTemplate>
                    <asp:LinkButton ID="deleteUser" runat="server" OnClick="deleteUser_Click"
                        Visible='<%#(!Eval("Email").Equals(Session["Email"]))%>'
                        CommandArgument='<%#Eval("Email")%>'>
                        Delete
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

    <div>
        <asp:Label ID="result" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
