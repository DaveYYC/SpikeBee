using System;
using System.ComponentModel.DataAnnotations;
using Website.Data;

namespace Website.Models
{
    public class ParentProgramInterest
    {
        public int Id { get; set; }

        public string IdentiyUserId { get; set; }

        public int VendorProgramId { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime InterestedCheckedDate { get; set; }

        // Navigation properties

        public ApplicationUser ApplicationUser { get; set; }

        public VendorProgram VendorProgram { get; set; }
    }
}
