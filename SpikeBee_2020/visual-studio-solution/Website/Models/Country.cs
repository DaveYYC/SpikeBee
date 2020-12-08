using System.Collections.Generic;

namespace Website.Models
{
    public class Country
    {
        public int CountryId { get; set; }
        public string CountryName { get; set; }

        // Navigation properties
        public ICollection<Province> Provinces { get; set; }
    }
}
