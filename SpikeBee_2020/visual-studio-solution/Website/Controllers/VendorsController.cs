using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Website.Data;
using Website.Models;
using Website.Models.DataManager;

namespace Website.Controllers
{
    public class VendorsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public VendorsController(ApplicationDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: Vendors
        public async Task<IActionResult> Index()
        {
            return View(await _context.Vendors.ToListAsync());
        }

        public async Task<IActionResult> Confirm()
        {
            return View();
        }

        // GET: Vendors/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendor = await _context.Vendors
                .FirstOrDefaultAsync(m => m.Id == id);
            if (vendor == null)
            {
                return NotFound();
            }

            return View(vendor);
        }

        // GET: Vendors/Create
        public IActionResult Create()
        {

            ViewBag.ProgramCity = GetProgramCity();

            return View(new ProgramLocationManager());
            //return View();
        }
        public JsonResult GetCitiesByProvince(int? id)
        {
            var db = new ApplicationDbContext();
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

        // POST: Vendors/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,Phone,UnitNumber,StreetName,Municipality,Province,PostalCode")] Vendor vendor, string returnUrl)
        {
            returnUrl = returnUrl ?? Url.Content("~/");
            //returnUrl = HttpContext.Request.PathBase;
            try
            {
                if (ModelState.IsValid)
                {
                    string applicationUserId = HttpContext.Session.GetString("ApplicationUserId");

                    ApplicationUser user = GetUserId(applicationUserId);
                    if (user != null)
                    {
                        _context.Add(vendor);
                        await _context.SaveChangesAsync();
                        vendor.ApplicationUser = user;
                        UpdateVendor(vendor);

                        var vendorId = new Claim("VendorId", vendor.Id.ToString());
                        await _userManager.AddClaimAsync(user, vendorId);

                        //return RedirectToAction("Create", "VendorProgram");
                        return RedirectToPage("/Account/RegisterConfirmation", new { area = "Identity", email = user.Email, returnUrl = returnUrl });
                    }
                    else
                    {
                        throw new Exception("Error creating vendor record: User record not found");

                    }
                }
            }
            catch (Exception ex)
            {
                return View(ex);
            }
            return View();
        }

        public void UpdateVendor(Vendor vendor)
        {
            _context.Vendors.Update(vendor);
            _context.SaveChanges();
        }

        public ApplicationUser GetUserId(string id)
        {
            ApplicationUser user = (ApplicationUser)_context.Users.Find(id);
            return user;
        }

        public IList GetAsKeyValuePairs()
        {
            var vendors = _context.Vendors.Select(v => new
            {
                Value = v.Id,
                Text = v.Name
            }).ToList();
            return vendors;
        }

        // GET: Vendors/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendor = await _context.Vendors.FindAsync(id);
            if (vendor == null)
            {
                return NotFound();
            }
            return View(vendor);
        }

        // POST: Vendors/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Phone,UnitNumber,CivicNumber,StreetName,Municipality,Province,PostalCode")] Vendor vendor)
        {
            if (id != vendor.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(vendor);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!VendorExists(vendor.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Confirm));
            }
            return View(vendor);
        }

        // GET: Vendors/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var vendor = await _context.Vendors
                .FirstOrDefaultAsync(m => m.Id == id);
            if (vendor == null)
            {
                return NotFound();
            }

            return View(vendor);
        }

        // POST: Vendors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var vendor = await _context.Vendors.FindAsync(id);
            _context.Vendors.Remove(vendor);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool VendorExists(int id)
        {
            return _context.Vendors.Any(e => e.Id == id);
        }
    }
}
