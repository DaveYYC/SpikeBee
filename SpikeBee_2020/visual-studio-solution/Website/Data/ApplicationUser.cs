using Microsoft.AspNetCore.Identity;
using System;

namespace Website.Data
{
    // Modify AspNetUsers table

    public class ApplicationUser : IdentityUser
    {
        [PersonalData]
        public string FirstName { get; set; }

        [PersonalData]
        public string LastName { get; set; }

        [PersonalData]
        public DateTime SignUpDate { get; set; }
    }
}
