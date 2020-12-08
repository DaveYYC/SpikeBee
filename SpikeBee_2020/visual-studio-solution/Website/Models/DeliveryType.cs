using System.Collections.Generic;

namespace Website.Models
{
    public class DeliveryType
    {
        public int Id { get; set; }
        public string Type { get; set; }

        public ICollection<VendorProgram> VendorPrograms { get; set; }
    }
}
