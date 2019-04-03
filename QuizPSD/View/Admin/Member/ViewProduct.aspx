<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="QuizPSD.View.Admin.Member.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton id="backHomeId" Text="Home" runat="server" OnClick="backHomeId_Click"/>
    <div>
        <h4 style="width: 115px;">List of Products</h4>
        <asp:DropDownList runat="server" ID="dropdown">
            <asp:ListItem Value="All"></asp:ListItem>
            <asp:ListItem Value="Accessories"></asp:ListItem>
            <asp:ListItem Value="Bike"></asp:ListItem>
            <asp:ListItem Value="Clothing"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button Text="View" runat="server" id="filterBtn" OnClick="filterBtn_Click"/>
    </div>
    <div>
        <asp:GridView ID="allProduct" runat="server" AutoGenerateColumns="false">
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
    </div>
</asp:Content>
