using QuizPSD.Factory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuizPSD.Repository
{
    public class UserRepo
    {
        static RealCycle_DBEntities db = DatabaseSingleton.getInstance();

        public static List<User> viewAllUsers()
        {
            return db.Users.ToList();
        }


        public static void createNewUser(User user)
        {
            db.Users.Add(user);
            db.SaveChanges();
        }

        public static void updateUserRole(String email)
        {
            User user = db.Users.Where(u => u.Email.Equals(email)).FirstOrDefault();
            user.Role = "admin";
            db.SaveChanges();
        }


        public static void deleteUser(String email)
        {
            User user = db.Users.Where(u => u.Email.Equals(email)).FirstOrDefault();
            db.Users.Remove(user);
            db.SaveChanges();
        }


        public static bool validateExistingEmail(String email)
        {
            User user = db.Users.Where(u => u.Email.Equals(email)).FirstOrDefault();
            if (user == null) return true;
            return false;
        }

        public static bool loginValidate(String email, String password)
        {
            User user = db.Users.Where(u => u.Email.Equals(email) && u.Password.Equals(password)).FirstOrDefault();
            if (user == null) return false;
            return true;
        }


        public static String getUserRole(String email) =>
            db.Users.Where(u => u.Email.Equals(email)).FirstOrDefault().Role;
    }
}