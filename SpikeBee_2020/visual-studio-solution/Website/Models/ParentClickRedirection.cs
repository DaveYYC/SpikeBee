using System;
using System.ComponentModel.DataAnnotations;
using Website.Data;

namespace Website.Models
{
    public class ParentClickRedirection
    {
        public int Id { get; set; }

        public string IdentityUserId { get; set; }

        public int VendorProgramId { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyy-MM-dd}")]

        public DateTime RedirectionDate { get; set; }

        //Navigation properties

        public ApplicationUser ApplicationUser { get; set; }

        public VendorProgram VendorProgram { get; set; }
    }
}
