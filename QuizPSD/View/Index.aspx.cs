using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> productList = ProductRepo.getTopProduct();
            topProducts.DataSource = productList;
            topProducts.DataBind();
            if (Session["Email"] != null)
            {
                if (UserRepo.getUserRole(Session["Email"].ToString()).Equals("admin"))
                {
                    memberRole.Visible = true;
                    viewProduct.Visible = false;
                    manageProduct.Visible = true;
                }
                else
                {
                    memberRole.Visible = false;
                    viewProduct.Visible = true;
                    manageProduct.Visible = false;
                }

                loginBtn.Visible = false;
                registerBtn.Visible = false;
                logoutBtn.Visible = true;
            }
            else
            {
                loginBtn.Visible = true;
                registerBtn.Visible = true;
                logoutBtn.Visible = false;
                memberRole.Visible = false;
                manageProduct.Visible = false;
                viewProduct.Visible = false;
            }
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterForm.aspx");
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void manageProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/Product/ManageProduct.aspx");
        }

        protected void memberRole_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/Member/ManageUser.aspx");
        }

        protected void viewProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/Member/ViewProduct.aspx");
        }
    }
}