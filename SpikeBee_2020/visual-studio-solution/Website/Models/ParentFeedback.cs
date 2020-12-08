using System;
using System.ComponentModel.DataAnnotations;
using Website.Data;

namespace Website.Models
{
    public class ParentFeedback
    {
        public int Id { get; set; }

        //FKey to ASPNetUsersID
        public string IdentityUserId { get; set; }

        public int VendorProgramId { get; set; }

        public int Rating { get; set; }

        [MaxLength(10000)]
        [Display(Name = "Comments")]
        public string Comment { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime Date { get; set; }

        // Navigation properties

        public ApplicationUser ApplicationUser { get; set; }

        public VendorProgram VendorProgram { get; set; }
    }
}
