using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Website.Data;
using Website.Models;
using Website.Models.DataManager;

namespace Website.ViewComponents
{
    public class ProgramByCityViewComponent : ViewComponent
    {
        public async Task<IViewComponentResult> InvokeAsync(int id)
        {

            List<VendorProgram> locations = null;
            if (id == 0)
            {
                locations = VendorProgramManager.GetAll();
            }
            else
            {
                locations = VendorProgramManager.GetAllByProgramLocation(id);
            }

            var programs = locations.Select(a => new VendorProgram
            {
                Id = a.Id,
                Description = a.Description,
                Price = a.Price,
                ProgramName = a.ProgramName,
                City = a.City,
                ProgramImage = a.ProgramImage,
                RegistrationStartDate = a.RegistrationStartDate,
                RegistrationEndDate = a.RegistrationEndDate,
                Vendor = a.Vendor,
                Headline = a.Headline,              
            }).ToList();

            return View(programs);
        }
    }
}
