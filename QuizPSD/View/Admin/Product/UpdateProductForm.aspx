<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UpdateProductForm.aspx.cs" Inherits="QuizPSD.View.Admin.Product.UpdateProductForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Update Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="categoryDropDown" runat="server">
                <asp:ListItem Value="Bike"></asp:ListItem>
                <asp:ListItem Value="Clothing"></asp:ListItem>
                <asp:ListItem Value="Accessories"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Stock"></asp:Label>
            <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Picture"></asp:Label>
            <asp:FileUpload ID="txtPicture" runat="server" />
            <asp:Label ID="errPicture" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Update Product" OnClick="UpdateProduct_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
     </div>
</asp:Content>
