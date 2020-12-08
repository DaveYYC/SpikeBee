using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Website.Models
{
    public class ProgramImage
    {
        public int Id { get; set; }

        public string FilePath { get; set; }

        [MaxLength(700)]
        public string Description { get; set; }

        // To store image in the database
        public byte[] PImage { get; set; }

        // Navigation properties

        public ICollection<VendorProgram> VendorPrograms { get; set; }
    }
}
