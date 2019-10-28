<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="QuizPSD.View.Admin.ManageProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton id="backHomeId" Text="Home" runat="server" OnClick="backHomeId_Click"/>
    <div>
        <h4 style="width: 115px;">List of Products</h4>
        <asp:Button ID="btnAdd" runat="server" Text="Add New Product" OnClick="btnAdd_Click"/>
		<asp:Button ID="btnRemove" runat="server" Text="Remove Product" OnClick="btnAdd_Click"/>
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
                <asp:TemplateField HeaderText="Update">
                    <ItemTemplate>
                        <asp:LinkButton ID="updateBtn" runat="server" Text="Update" 
                            OnClick="updateBtn_Click" CommandArgument='<%#Eval("ProductId")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="deleteBtn" runat="server" Text="Delete" 
                            OnClick="deleteBtn_Click" CommandArgument='<%#Eval("ProductId")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
