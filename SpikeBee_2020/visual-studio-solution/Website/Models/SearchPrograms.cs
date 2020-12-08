using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections.Generic;

namespace Website.Models
{
    public class SearchPrograms
    {
        public List<VendorProgram> Programs { get; set; }

        public SelectList DeliveryTypeId { get; set; }

        public SelectList ProgramCountryId { get; set; }

        public SelectList ProgramProvinceId { get; set; }
        public SelectList ProgramCityId { get; set; }

        public SelectList ProgramCategoryId { get; set; }

        public SelectList ProgramTypeId { get; set; }

        public string ProgramDelivery { get; set; }

        public string ProgramProvince { get; set; }

        public string ProgramCountry { get; set; }

        public string ProgramMunicipality { get; set; }

        public string ProgramCategory { get; set; }

        public string ProgramType { get; set; }

        public string SearchString { get; set; }


    }
}
