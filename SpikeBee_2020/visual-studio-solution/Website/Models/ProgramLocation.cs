using System.ComponentModel.DataAnnotations;

namespace Website.Models
{
    public class ProgramLocation
    {
        public int Id { get; set; }

        public string UnitNumber { get; set; }

        [Required]
        [MaxLength(50)]
        public string StreetName { get; set; }

        [Required]
        [MaxLength(50)]
        public string Municipality { get; set; }

        [Required]
        [MaxLength(50)]
        public string Province { get; set; }

        //[Required]
        //[MaxLength(50)]
        //public string Country{ get; set; }

        //[Required]
        //public int ProgramProvinceId  { get; set; }

        [Required]
        [MaxLength(30)]
        public string PostalCode { get; set; }

        public double Latitude { get; set; }

        public double Longitute { get; set; }

        // Navigation properties 

        //public ICollection<VendorProgram> VendorPrograms { get; set; }
        //public Province programProvince { get; set; }

    }
}
