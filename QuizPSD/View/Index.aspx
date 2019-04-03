<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuizPSD.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div>
        <h2>Home</h2>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton runat="server" Text="Login" id="loginBtn" OnClick="loginBtn_Click"/>
    <asp:LinkButton runat="server" Text="Register" id="registerBtn" OnClick="registerBtn_Click"/>
    <asp:LinkButton Text="Manage Product" id="manageProduct" runat="server" OnClick="manageProduct_Click"/>
    <asp:LinkButton Text="View Product" id="viewProduct" runat="server" OnClick="viewProduct_Click"/>
    <asp:LinkButton Text="Update Member Role" id="memberRole" OnClick="memberRole_Click" runat="server" />
    <asp:LinkButton Text="Logout" runat="server" id="logoutBtn" OnClick="logoutBtn_Click"/>
    <p>
        Real Cycle is a new established online bicycle store in Indonesia.
        Stop by at our store and let us help you find the right products 
        to suit your cycling needs! We keep our efforts to create the most 
        innovative, competitive, and only the best quality products by 
        putting our hearts & souls into creative ideas & the use of 
        cutting-edge technologies, to produce only the best bicycles. 
    </p>
    <h2>TOP PRODUCTS:</h2>
    <asp:GridView ID="topProducts" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Name" DataField="ProductName"/>
            <asp:BoundField HeaderText="Stocks" DataField="ProductStock"/>
            <asp:BoundField HeaderText="Price" DataField="ProductPrice"/>
            <asp:BoundField HeaderText="Category" DataField="ProductCategory"/>

            <asp:TemplateField HeaderText="Picture">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="250px" ImageUrl='<%# Page.ResolveUrl
                            (string.Format("/images/{0}", Eval("ProductPicture"))) %>'/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
