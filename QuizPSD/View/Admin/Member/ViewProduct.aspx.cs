using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD.View.Admin.Member
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        List<QuizPSD.Product> productData;

        protected void Page_Load(object sender, EventArgs e)
        {
            productData = ProductRepo.getAllProduct();
            allProduct.DataSource = ProductRepo.getAllProduct();
            allProduct.DataBind();
        }

        protected void backHomeId_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Index.aspx");
        }

        protected void filterBtn_Click(object sender, EventArgs e)
        {
            String filter = dropdown.SelectedItem.ToString();
            if (!filter.Equals("All"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + filter + "')");
                allProduct.DataSource = ProductRepo.filterProduct(filter);
                allProduct.DataBind();
            }
        }
    }
}