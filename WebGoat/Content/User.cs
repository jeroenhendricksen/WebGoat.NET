using System.Diagnostics;

namespace OWASP.WebGoat.NET
{
    public class User
    {
        public string Name  { get; set; }
        public string Email { get; set; }

        public User(string name, string email)
        {
            Name = name;
            Email = email;

            Debug.WriteLine($"Constructed {this}");
        }

        ~User() 
        {
            Debug.WriteLine($"Cleaning up {this}");
        }

        public override string ToString()
        {
            return $"Type: {GetType().FullName}, {nameof(Name)}: {Name}, {nameof(Email)}: {Email}";
        }
    }
}