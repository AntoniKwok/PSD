using QuizPSD.Repository;
using QuizPSD.View.Admin.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD.View.Admin
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        List<QuizPSD.Product> productData;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserRepo.getUserRole(Session["Email"].ToString()).Equals("admin"))
                btnAdd.Visible = true;
            else btnAdd.Visible = false;
            productData = ProductRepo.getAllProduct();
            init();
        }

        private void init() {
            allProduct.DataSource = ProductRepo.getAllProduct();
            allProduct.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductForm.aspx");
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            ProductRepo.deleteProduct((sender as LinkButton).CommandArgument);
            init();
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProductForm.aspx?x=" + (sender as LinkButton).CommandArgument);
        }

        protected void backHomeId_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Index.aspx");
        }
    }
}