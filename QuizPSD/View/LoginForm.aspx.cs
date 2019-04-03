using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Email"] != null)
                    txtEmail.Text = Request.Cookies["Email"].Value;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (UserRepo.loginValidate(txtEmail.Text, txtPassword.Text))
            {
                if (CheckBox.Checked)
                {
                    HttpCookie cookie = new HttpCookie("Email", txtEmail.Text);
                    cookie.Expires = DateTime.Now.AddHours(1);
                    Response.Cookies.Add(cookie);
                }
                Session.Add("Email", txtEmail.Text);
                Response.Redirect("Index.aspx");
            }
            result.Text = "Wrong email or password!";
        }

        protected void backHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}