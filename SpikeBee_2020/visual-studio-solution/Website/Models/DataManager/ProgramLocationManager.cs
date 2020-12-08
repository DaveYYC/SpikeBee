using Microsoft.AspNetCore.Mvc.Rendering;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using Website.Data;

namespace Website.Models.DataManager
{
    public class ProgramLocationManager
    {
        public static IList GetAsKeyValueCityPairs()
        {
            var context = new ApplicationDbContext();
            var locations = context.Cities.Select(location => new
            {
                Value = 0,
                Text = location.CityName,
            }).ToList();
            return locations;
        }
        // get the  program country list

        private ApplicationDbContext db;
        public ProgramLocationManager()
        {
            db = new ApplicationDbContext();
        }

        public int programCountryId { get; set; }
        private SelectList programCountries;
        public SelectList ProgramCountries
        {
            get
            {
                return (programCountries ?? new SelectList(db.Countries.Select(x =>
                new { Id = x.CountryId, name = x.CountryName }).ToList(), "Id", "name", programCountryId));
            }

            set
            {
                programCountries = value;
            }

        }

        //get province list bind to country
        public int programCountryProvinceId { get; set; }
        private SelectList programCountryProvinces;

        //get the provinces bind to the country
        public SelectList ProgramCountryProvinces
        {
            get
            {
                return (programCountryProvinces ?? new SelectList(db.Provinces.Select(x =>
                new { Id = x.ProvinceId, name = x.ProvinceName }).ToList(), "Id", "name", programCountryProvinceId));
            }
            set
            {
                programCountryProvinces = value;
            }
        }


        // get the  program province list
        public int programProvinceId { get; set; }
        private SelectList programProvinces;

        public SelectList ProgramProvinces
        {
            get
            {
                return (programProvinces ?? new SelectList(db.Provinces.Select(x =>
                new { Id = x.ProvinceId, name = x.ProvinceName }).ToList(), "Id", "name", programProvinceId));
            }

            set
            {
                programProvinces = value;
            }
        }
        //get city list bind to province
        public int CityId { get; set; }
        private SelectList cities;

        //get the cities bind to the province
        public SelectList ProgramLocations
        {
            get
            {
                return (cities ?? new SelectList(db.Cities.Select(x =>
                new { Id = x.CityId, name = x.CityName }).ToList(), "Id", "name", CityId));
            }
            set
            {
                cities = value;

            }
        }


        public List<VendorProgram> Programs { get; set; }
        public string SearchString { get; set; }
        public SelectList DeliveryTypeId { get; set; }

        public SelectList ProgramCountryId { get; set; }

        public SelectList ProgramProvinceId { get; set; }

        public SelectList ProgramCityId { get; set; }

        public SelectList ProgramLocationId { get; set; }

        public SelectList ProgramCategoryId { get; set; }

        public SelectList ProgramTypeId { get; set; }

        public string ProgramDelivery { get; set; }

        public string ProgramProvince { get; set; }

        public string ProgramCountry { get; set; }

        public string ProgramMunicipality { get; set; }

        public string ProgramCategory { get; set; }

        public string ProgramType { get; set; }
        public string ProgramCity { get; set; }



        [Required]
        [Display(Name = "Company Name")]
        public string Name { get; set; }

        [Required]
        [MaxLength(30)]
        public string Phone { get; set; }

        [MaxLength(30)]
        [Display(Name = "Unit#")]
        public string UnitNumber { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "Street Address")]
        public string StreetName { get; set; }

        //[Required]
        //[MaxLength(50)]
        //[Display(Name="City")]
        //public string Municipality { get; set; }

        //[Required]
        //[MaxLength(20)]
        //public string Province { get; set; }

        [Required]
        [MaxLength(30)]
        [Display(Name = "Postal Code")]
        public string PostalCode { get; set; }




    }
}
