using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
using System.Linq;
using System.Threading.Tasks;
using Website.Data;
using Website.Models;
using Website.Models.DataManager;

namespace Website.Controllers
{
    public class VendorProgramsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private ApplicationDbContext db;
        public VendorProgramsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: VendorPrograms
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.VendorPrograms.
                Include(v => v.DeliveryType).Include(v => v.ProgramCategory).
                Include(v => v.City).Include(v => v.ProgramImage).
                Include(v => v.ProgramType).Include(v => v.Vendor);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: VendorPrograms/Details
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendorProgram = await _context.VendorPrograms
                .Include(v => v.DeliveryType)
                .Include(v => v.ProgramCategory)
                .Include(v => v.ProgramImage)
                .Include(v => v.ProgramType)
                .Include(v => v.Vendor)
                .Include(v => v.City)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (vendorProgram == null)
            {
                return NotFound();
            }

            VendorProgram program = _context.VendorPrograms.Find(id);
            ViewBag.ProgramId = program;

            var vendorProgramIds = _context.ParentFeedbacks.Where(d => d.VendorProgramId.Equals(program.Id)).ToList();
            ViewBag.VendorProgramId = vendorProgramIds;

            var comments = _context.ParentFeedbacks.Where(d => d.VendorProgramId.Equals(program.Id)).ToList();
            ViewBag.Comment = comments;

            var ratings = _context.ParentFeedbacks.Where(d => d.VendorProgramId.Equals(program.Id)).ToList();
            ViewBag.Ratings = ratings;

            if (ratings.Count() > 0)
            {
                var ratingSum = ratings.Sum(d => d.Rating);
                ViewBag.RatingSum = ratingSum;
                var ratingCount = ratings.Count();
                ViewBag.RatingCount = ratingCount;
            }
            else
            {
                ViewBag.RatingSum = 0;
                ViewBag.RatingCount = 0;
            }

            return View(vendorProgram);
        }

        // GET: VendorPrograms/Create
        public IActionResult Create(int? id)
        {
            if ("Vendor".Equals(Request.Query["UserType"]))
            {
                //return NotFound();
                return RedirectToAction(nameof(HomePage));
            }
            else

            {
                ViewData["DeliveryTypeId"] = new SelectList(_context.DeliveryTypes, "Id", "Type");
                ViewData["ProgramCategoryId"] = new SelectList(_context.ProgramCategories, "Id", "Category");
                ViewData["ProgramImageId"] = new SelectList(_context.ProgramImages, "Id", "Description");
                ViewData["ProgramTypeId"] = new SelectList(_context.ProgramTypes, "Id", "Type");
                ViewData["VendorId"] = new SelectList(_context.Vendors, "Id", "CivicNumber");
                ViewData["CityId"] = new SelectList(_context.Cities, "CityId", "CityName");

                return View();
            }
        }

        public ApplicationUser GetUserId(string id)
        {
            ApplicationUser user = (ApplicationUser)_context.Users.Find(id);
            return user;
        }
        // POST: VendorPrograms/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,VendorId,ProgramImageId,DeliveryTypeId,ProgramCategoryId,ProgramTypeId,CityId,ProgramName,RegistrationStartDate,RegistrationEndDate,MinimumAge,MaximumAge,Requirements,RegistrationLink,Price,AddedDate,Status,Policy,Discount,Description,Gender,Headline")] VendorProgram vendorProgram)
        {
            if (ModelState.IsValid)
            {
                string vendorId = HttpContext.User.Claims.FirstOrDefault(x => x.Type == "VendorId").Value;
                //string applicationUserId = HttpContext.Session.GetString("ApplicationUserId");
                //ApplicationUser user = GetUserId(applicationUserId);
                if (vendorId != null)
                {
                    vendorProgram.VendorId = Convert.ToInt32(vendorId);
                    vendorProgram.AddedDate = DateTime.Now;
                    _context.Add(vendorProgram);
                    await _context.SaveChangesAsync();
                    return RedirectToAction(nameof(MyPrograms));
                }
            }
            ViewData["DeliveryTypeId"] = new SelectList(_context.DeliveryTypes, "Id", "Type", vendorProgram.DeliveryType.Type);
            ViewData["ProgramCategoryId"] = new SelectList(_context.ProgramCategories, "Id", "Category", vendorProgram.ProgramCategory.Category);
            ViewData["ProgramImageId"] = new SelectList(_context.ProgramImages, "Id", "Description", vendorProgram.ProgramImageId);
            ViewData["ProgramTypeId"] = new SelectList(_context.ProgramTypes, "Id", "Type", vendorProgram.ProgramType.Type);
            ViewData["VendorId"] = new SelectList(_context.Vendors, "Id", "Id", vendorProgram.VendorId);
            ViewData["CityId"] = new SelectList(_context.Cities, "CityId", "CityName", vendorProgram.City.CityName);
            return View(vendorProgram);
        }

        // GET: VendorPrograms/Edit
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendorProgram = await _context.VendorPrograms.FindAsync(id);
            if (vendorProgram == null)
            {
                return NotFound();
            }
            ViewData["DeliveryTypeId"] = new SelectList(_context.DeliveryTypes, "Id", "Type", vendorProgram.DeliveryTypeId);
            ViewData["ProgramCategoryId"] = new SelectList(_context.ProgramCategories, "Id", "Category", vendorProgram.ProgramCategoryId);
            ViewData["ProgramImageId"] = new SelectList(_context.ProgramImages, "Id", "Description", vendorProgram.ProgramImageId);
            ViewData["ProgramTypeId"] = new SelectList(_context.ProgramTypes, "Id", "Type", vendorProgram.ProgramTypeId);
            ViewData["VendorId"] = new SelectList(_context.Vendors, "Id", "Id", vendorProgram.VendorId);
            ViewData["CityId"] = new SelectList(_context.Cities, "CityId", "CityName", vendorProgram.CityId);
            return View(vendorProgram);
        }

        // POST: VendorPrograms/Edit/
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int? id, [Bind("Id,VendorId,ProgramImageId,DeliveryTypeId,ProgramCategoryId,ProgramTypeId,CityId,ProgramName,RegistrationStartDate,RegistrationEndDate,MinimumAge,MaximumAge,Requirements,RegistrationLink,Price,AddedDate,Status,Policy,Discount,Description,Gender,Headline")] VendorProgram vendorProgram)
        {
            if (id != vendorProgram.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vendorProgram);
                    //_context.SaveChanges();
                    await _context.SaveChangesAsync();
                    return RedirectToAction(nameof(MyPrograms));

                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!VendorProgramExists(vendorProgram.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DeliveryTypeId"] = new SelectList(_context.DeliveryTypes, "Id", "Id", vendorProgram.DeliveryTypeId);
            ViewData["ProgramCategoryId"] = new SelectList(_context.ProgramCategories, "Id", "Id", vendorProgram.ProgramCategoryId);
            ViewData["ProgramImageId"] = new SelectList(_context.ProgramImages, "Id", "Id", vendorProgram.ProgramImageId);
            ViewData["ProgramTypeId"] = new SelectList(_context.ProgramTypes, "Id", "Id", vendorProgram.ProgramTypeId);
            ViewData["VendorId"] = new SelectList(_context.Vendors, "Id", "CivicNumber", vendorProgram.VendorId);
            ViewData["CityId"] = new SelectList(_context.Cities, "CityId", "CityName", vendorProgram.CityId);
            return View(vendorProgram);
        }

        // GET: VendorPrograms/Delete
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendorProgram = await _context.VendorPrograms
                .Include(v => v.DeliveryType)
                .Include(v => v.ProgramCategory)
                .Include(v => v.ProgramImage)
                .Include(v => v.ProgramType)
                .Include(v => v.Vendor)
                .Include(v => v.City)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (vendorProgram == null)
            {
                return NotFound();
            }

            return View(vendorProgram);
        }

        // POST: VendorPrograms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vendorProgram = await _context.VendorPrograms.FindAsync(id);
            _context.VendorPrograms.Remove(vendorProgram);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(MyPrograms));
        }

        private bool VendorProgramExists(int id)
        {
            return _context.VendorPrograms.Any(e => e.Id == id);
        }

        public IActionResult HomePage(int? id)
        {
            ViewBag.ProgramCity = GetProgramCity();

            return View(new ProgramLocationManager());
        }

        public JsonResult GetCitiesByProvince(int? id)
        {
            db = new ApplicationDbContext();
            var cities = db.Cities.Where(x => x.ProvinceId == id).Select(x => new { id = x.CityId, Name = x.CityName }).ToList();

            return Json(cities);
        }
        public JsonResult GetProvincesByCountry(int? id)
        {
            var db = new ApplicationDbContext();
            var provinces = db.Provinces.Where(x => x.CountryId == id).Select(x => new { id = x.ProvinceId, Name = x.ProvinceName }).ToList();

            return Json(provinces);
        }

        protected IEnumerable GetProgramCity()
        {
            var locations = ProgramLocationManager.GetAsKeyValueCityPairs();
            var Location = new SelectList(locations, "Value", "Text");

            var list = Location.ToList();
            list.Insert(0, new SelectListItem
            {
                Text = "Program City",
                Value = "0",
            });
            return list;
        }

        public IActionResult GetProgramByCity(int? id)
        {
            return ViewComponent("ProgramByCity", id);
        }

        public ActionResult MyPrograms(int? Id)
        {
            string vendorId = HttpContext.User.Claims.FirstOrDefault(x => x.Type == "VendorId").Value;
            int id = Convert.ToInt32(vendorId);
            var venProg = VendorProgramManager.GetAllProgramsByVendor(id)
            .Select(pg => new VendorProgram
            {
                ProgramImageId = pg.ProgramImageId,
                ProgramImage = pg.ProgramImage,
                City = pg.City,
                CityId = pg.CityId,
                Headline = pg.Headline,
                ProgramName = pg.ProgramName,
                Description = pg.Description,
                Price = pg.Price,
                MinimumAge = pg.MinimumAge,
                MaximumAge = pg.MaximumAge,
                Id = pg.Id,
                RegistrationLink = pg.RegistrationLink,
                RegistrationStartDate = pg.RegistrationStartDate,
                RegistrationEndDate = pg.RegistrationEndDate,
                Vendor = pg.Vendor,              
            }).ToList();

            var applicationDbContext = _context.VendorPrograms.Find(Id);

            return View(venProg);
        }
    }
}
