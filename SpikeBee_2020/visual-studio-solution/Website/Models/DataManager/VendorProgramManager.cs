using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using Website.Data;

namespace Website.Models.DataManager
{
    public class VendorProgramManager
    {
        public static List<VendorProgram> GetAll()
        {
            var context = new ApplicationDbContext();
            var program = context.VendorPrograms
                .Where(vp => vp.RegistrationEndDate >= DateTime.Now)
                .Include(at => at.ProgramType)
                .Include(l => l.City)
                .Include(d => d.DeliveryType)
                .Include(im => im.ProgramImage)
                .Include(vd => vd.Vendor)
                .OrderBy(a => a.AddedDate).ToList();
            return program;
        }

        public static List<VendorProgram> GetAllByProgramType(int id)
        {
            var context = new ApplicationDbContext();
            var program = context.VendorPrograms.Where(at => at.ProgramTypeId == id).
                Include(a => a.ProgramType).Include(im => im.ProgramImage).ToList();
            return program;
        }

        public static List<VendorProgram> GetAllByDeliveryType(int id)
        {
            var context = new ApplicationDbContext();
            var program = context.VendorPrograms.Where(at => at.DeliveryTypeId == id).
                Include(a => a.DeliveryType).ToList();
            return program;
        }

        public static List<VendorProgram> GetAllByProgramLocation(int id)
        {
            var context = new ApplicationDbContext();
            var location = context.VendorPrograms.Where(l => l.CityId == id)
            .Where(vp => vp.RegistrationEndDate >= DateTime.Now)
            .Include(im => im.ProgramImage)
            .Include(lo => lo.City)
            .Include(dl => dl.DeliveryType)
            .Include(at => at.ProgramCategory)
            .Include(pac => pac.ProgramType)
            .ToList();
            return location;
        }

        public static List<VendorProgram> GetAllProgramsByVendor(int id)
        {
            var db = new ApplicationDbContext();
            var programs = db.VendorPrograms
                //.Where(vp => vp.RegistrationEndDate >= DateTime.Now)
                .Include(dl => dl.DeliveryType)
                .Include(at => at.ProgramCategory)
                .Include(pac => pac.ProgramType)
                .Include(prog => prog.ProgramImage)
                .Include(loc => loc.City)
                .Include(vd => vd.Vendor)
                .Where(program => program.VendorId == id)
                .ToList();
            return programs;

        }
    }
}
