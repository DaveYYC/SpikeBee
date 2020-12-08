using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Website.Models
{
    public class VendorProgram
    {
        public int Id { get; set; }

        public int VendorId { get; set; }

        public int? ProgramImageId { get; set; }

        [Required]
        [Display(Name = "Program Delivery:")]
        public int DeliveryTypeId { get; set; }

        [Required]
        [Display(Name = "Camp, Class or Event:")]
        public int ProgramCategoryId { get; set; }

        [Required]
        [Display(Name = "Program Type:")]
        public int ProgramTypeId { get; set; }

        [Required]
        [Display(Name = "Program City:")]
        public int CityId { get; set; }

        [Required]
        [Display(Name = "Program Name:")]
        public string ProgramName { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:MMM-dd-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Registration Start Date:")]
        public DateTime RegistrationStartDate { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:MMM-dd-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Registration End Date:")]
        public DateTime RegistrationEndDate { get; set; }


        [Display(Name = "Minimum Age:")]
        public int MinimumAge { get; set; }


        [Display(Name = "Maximum Age:")]
        public int MaximumAge { get; set; }

        [Required]
        [Display(Name = "Registration Link:")]
        public string RegistrationLink { get; set; }

        public double Price { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime AddedDate { get; set; }

        [Required]
        [Display(Name = "Is the Program Active")]
        public bool Status { get; set; }

        [Required]
        [MaxLength(10000)]
        [Display(Name = "Program Description:")]
        public string Description { get; set; }

        [Required]
        [MaxLength(5000)]
        [Display(Name = "Headline:")]
        public string Headline { get; set; }

        [MaxLength(5000)]
        [Display(Name = "Requirements:")]
        public string Requirements { get; set; }

       

        // Navigation properties

        public Vendor Vendor { get; set; }

        public ProgramImage ProgramImage { get; set; }

        public ICollection<ParentFeedback> ParentFeedbacks { get; set; }

        public ICollection<ParentProgramInterest> ParentProgramInterests { get; set; }

        public ICollection<ParentClickRedirection> ParentClickRedirections { get; set; }

        public ICollection<Event> Events { get; set; }

        public ProgramCategory ProgramCategory { get; set; }

        public DeliveryType DeliveryType { get; set; }

        public ProgramType ProgramType { get; set; }

        public City City { get; set; }

    }
}
