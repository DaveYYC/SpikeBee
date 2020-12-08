using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Website.Models
{
    public class ProgramViewModel
    {
        public int Id { get; set; }

        [Required]
        [Display(Name = "Program Name:")]
        public string ProgramName { get; set; }

        [Required]
        [Display(Name = "Registration Link:")]
        public string RegistrationLink { get; set; }

        [Display(Name = "Price:")]
        public double Price { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime AddedDate { get; set; }

        [MaxLength(10000)]
        public string Description { get; set; }

        public string Vendor { get; set; }

        public string ProgramImage { get; set; }

        public string ProgramCategory { get; set; }

        public string DeliveryType { get; set; }

        public string ProgramType { get; set; }

        public string ProgramLocation { get; set; }

        public List<VendorProgram> Programs { get; set; }

        public SelectList DeliveryTypeId { get; set; }

        public SelectList ProgramCountryId { get; set; }

        public SelectList ProgramProvinceId { get; set; }

        public SelectList ProgramLocationId { get; set; }

        public SelectList ProgramCategoryId { get; set; }

        public SelectList ProgramTypeId { get; set; }

        public string ProgramDelivery { get; set; }

        public string ProgramProvince { get; set; }

        public string ProgramCountry { get; set; }

        public string ProgramMunicipality { get; set; }

        //public string ProgramCategory { get; set; }

        //public string ProgramType { get; set; }

        public string SearchString { get; set; }

    }
}
