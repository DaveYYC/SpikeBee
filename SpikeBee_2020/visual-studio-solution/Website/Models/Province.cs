using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Website.Models
{
    public class Province
    {
        public int ProvinceId { get; set; }
        public string ProvinceName { get; set; }
        [Required]
        public int CountryId { get; set; }

        // Navigation properties
        public ICollection<City> Cities { get; set; }
        public Country Country { get; set; }
    }
}
