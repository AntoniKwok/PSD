using QuizPSD.Factory;
using QuizPSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizPSD
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            String name = txtName.Text;
            String email = txtEmail.Text;
            String password = txtPassword.Text;
            String confirm = txtConfirm.Text;
            String gender = radioButtonGender.SelectedItem.Value;
            String birthdate = txtDOB.Text;
            String phone = txtPhone.Text;
            String address = txtAddress.Text;

            bool alpha = false, digit = false, length = true;
            bool flag = true;
            if (password.Length < 8) length = false;
            for (int i = 0; i < password.Length; i++)
            {
                if (char.IsLetter(password[i])) alpha = true;
                else if (char.IsDigit(password[i])) digit = true;
                else
                {
                    alpha = false;
                    digit = false;
                    break;
                }
            }
            for (int i = 0; i < phone.Length; i++)
                if (char.IsLetter(phone[i])) flag = false;
            if (phone.Length < 10 || phone.Length > 12)
                flag = false;

            if (name.Equals("") || email.Equals("") || password.Equals("") || gender.Equals("")
                || birthdate.Equals("") || phone.Equals(""))
                result.Text = "All fields must be filled!";
            else if (!UserRepo.validateExistingEmail(email))
                result.Text = "Email has existed, please choose another one!";
            else if (!length)
                result.Text = "Password length must be at least 8 characters!";
            else if (!alpha || !digit)
                result.Text = "Password must be alphanumeric!";
            else if (DateTime.Now.Year - Convert.ToDateTime(birthdate).Year < 17)
                result.Text = "Minimum age is 17!";
            else if (!flag)
                result.Text = "Phone number must be filled with numeric and is 12 characters!";
            else if (!address.EndsWith("Street"))
                result.Text = "Address must ends with 'Street'!";
            else if (!confirm.Equals(password))
                result.Text = "Password and Password Confirmation are not the same!";
            else
            {
                User user = UserFactory.createUser(name, email, password, gender, birthdate, phone,
                    address);
                UserRepo.createNewUser(user);
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void backHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}