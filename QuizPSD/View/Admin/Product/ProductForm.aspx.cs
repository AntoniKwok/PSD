using QuizPSD.Factory;
using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD.View.Admin.Product
{
    public partial class ProductForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            String name = txtName.Text;
            String category = categoryDropDown.SelectedItem.ToString();
            String priceText = txtPrice.Text;
            String stockText = txtStock.Text;
            String picturePath = txtPicture.PostedFile.FileName;
            String description = txtDesc.Text;

            bool flag = true;
            int descCounter = 0;

            for (int i = 0; i < txtPrice.Text.Length; i++)
                if (!char.IsDigit(txtPrice.Text[i]))
                {
                    flag = false;
                    break;
                }
            for (int i = 0; i < txtStock.Text.Length; i++)
                if (!char.IsDigit(txtStock.Text[i]))
                {
                    flag = false;
                    break;
                }
            for (int i = 0; i < description.Length; i++)
                if (description[i] == ' ' && i != 0)
                    if (description[i - 1] != ' ') descCounter++;

            if (name.Equals("") || category.Equals("") || priceText.Equals("") ||
                stockText.Equals("") || picturePath.Equals("") || description.Equals(""))
                result.Text = "All fields must be filled!";
            else if (!flag)
                result.Text = "Price and Stock must be only filled with numeric value" +
                    "and is greater than 0!";
            else if (Int32.Parse(priceText) <= 0 || Int32.Parse(stockText) <= 0) flag = false;
            else if (!picturePath.EndsWith(".jpg") && !picturePath.EndsWith(".png"))
                result.Text = "Picture extension must ends with '.jpg' or '.png'!";
            else if (descCounter != 6)
                result.Text = "Description must be filled with 7 words!";
            else
            {
                QuizPSD.Product product = ProductFactory.createProduct(name, category,
                    Int32.Parse(priceText), Int32.Parse(stockText), picturePath, description);
                ProductRepo.addProduct(product);
                Response.Redirect("ManageProduct.aspx");
            }
        }
    }
}