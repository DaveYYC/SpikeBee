using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Website.Models;
using System.Drawing.Printing;
using System.IO;
using static System.Net.Mime.MediaTypeNames;
using Website.Areas.Identity;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Website.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
        {
        }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Event> Events { get; set; }
        public DbSet<ParentClickRedirection> ParentClickRedirections { get; set; }
        public DbSet<ParentFeedback> ParentFeedbacks { get; set; }
        public DbSet<ParentProgramInterest> ParentProgramInterests { get; set; }
        public DbSet<VendorProgram> VendorPrograms { get; set; }
        public DbSet<ProgramLocation> ProgramLocations { get; set; }
        public DbSet<ProgramImage> ProgramImages { get; set; }
        public DbSet<ProgramSchedule> ProgramSchedules { get; set; }
        public DbSet<Vendor> Vendors { get; set; }
        public DbSet<DeliveryType> DeliveryTypes { get; set; }
        public DbSet<ProgramCategory> ProgramCategories { get; set; }
        public DbSet<ProgramType> ProgramTypes { get; set; }
        public DbSet<Province> Provinces { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<City> Cities { get; set; }

        
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //Use this string with the SQL SCRIPT in the GITHUB file folder for a local DB in visual studio

            //optionsBuilder.UseSqlServer("Server =(localdb)\\mssqllocaldb;Database=SpikeBee;Trusted_Connection=True;");

            //Use the connection string from your MS SQL Server found in Azure Dashboard when publishing -- also update the string in appsettings.json
           
            optionsBuilder.UseSqlServer("Server=tcp:spikebee.database.windows.net,1433;Initial Catalog=SpikeBeeDB2;Persist Security Info=False;User ID=spikebee;Password=1a2b3c4d5e!!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        }


        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            // Seed data

            builder.Entity<DeliveryType>().HasData(
                new DeliveryType { Id = 1, Type = "Online" },
                new DeliveryType { Id = 2, Type = "In person" }
                );

            builder.Entity<ProgramType>().HasData(
                new ProgramType { Id = 1, Type = "Dance" },
                new ProgramType { Id = 2, Type = "Soccer" },
                new ProgramType { Id = 3, Type = "Art" },
                new ProgramType { Id = 4, Type = "Swimming" }
                );

            builder.Entity<ProgramCategory>().HasData(
                new ProgramCategory { Id = 1, Category = "Camp" },
                new ProgramCategory { Id = 2, Category = "Class" },
                new ProgramCategory { Id = 3, Category = "Event" }
                );
        }
    }
}
