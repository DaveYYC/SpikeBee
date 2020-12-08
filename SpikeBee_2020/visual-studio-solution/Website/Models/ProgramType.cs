using System.Collections.Generic;

namespace Website.Models
{
    public class ProgramType
    {
        public int Id { get; set; }
        public string Type { get; set; }

        // Navigation properties

        public ICollection<VendorProgram> VendorPrograms { get; set; }
    }
}
