using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD.View.Admin.Member
{
    public partial class ManageUser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            List<User> userList = UserRepo.viewAllUsers();
            allUsers.DataSource = userList;
            allUsers.DataBind();
        }

        protected void setAdmin_Click(object sender, EventArgs e)
        {
            UserRepo.updateUserRole((sender as LinkButton).CommandArgument);
            result.Text = "Successfully updated " + (sender as LinkButton).CommandArgument +
                "'s role!";
            allUsers.DataSource = UserRepo.viewAllUsers();
            allUsers.DataBind();
        }

        protected void deleteUser_Click(object sender, EventArgs e)
        {
            UserRepo.deleteUser((sender as LinkButton).CommandArgument);
            allUsers.DataSource = UserRepo.viewAllUsers();
            allUsers.DataBind();
        }
    }
}