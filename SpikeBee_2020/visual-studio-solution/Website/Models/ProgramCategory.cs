using System.Collections.Generic;

namespace Website.Models
{
    public class ProgramCategory
    {
        public int Id { get; set; }
        public string Category { get; set; }

        // Navigation properties

        public ICollection<VendorProgram> VendorPrograms { get; set; }
    }
}
