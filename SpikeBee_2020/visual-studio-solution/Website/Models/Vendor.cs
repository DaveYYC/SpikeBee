using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Website.Data;

namespace Website.Models
{
    public class Vendor
    {
        public int Id { get; set; }

        [Required]
        [Display(Name = "Company Name")]
        public string Name { get; set; }

        [Required]
        [MaxLength(30)]
        public string Phone { get; set; }

        [MaxLength(30)]
        [Display(Name = "Unit#")]
        public string UnitNumber { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "Street Address")]
        public string StreetName { get; set; }

        //[Required]
        //[MaxLength(50)]
        //[Display(Name="City")]
        //public string Municipality { get; set; }

        //[Required]
        //[MaxLength(20)]
        //public string Province { get; set; }

        [Required]
        [MaxLength(30)]
        [Display(Name = "Postal Code")]
        public string PostalCode { get; set; }

        // Navigation properties

        public ICollection<VendorProgram> VendorPrograms { get; set; }

        public ApplicationUser ApplicationUser { get; set; }
    }
}
