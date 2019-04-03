using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuizPSD.Factory
{
    public class UserFactory
    {
        public static User createUser(String name, String email, String password, String gender,
            String birthdate, String phone, String address) =>
            new User
            {
                Name = name,
                Email = email,
                Password = password,
                Gender = gender,
                BirthDate = Convert.ToDateTime(birthdate),
                PhoneNumber = phone,
                Address = address,
                Role = "member"
            };
    }
}