using System.ComponentModel.DataAnnotations;

namespace Website.Models
{
    public class ContactUs
    {
        [Required, MaxLength(100)]
        [Display(Name = "Full Name")]
        public string FullName { get; set; }

        [Required, MaxLength(100)]
        public string Email { get; set; }

        [Required, MaxLength(15)]
        [Display(Name = "Phone Number")]
        public string PhoneNumber { get; set; }

        [Required, MaxLength(100)]
        public string Message { get; set; }
    }
}
