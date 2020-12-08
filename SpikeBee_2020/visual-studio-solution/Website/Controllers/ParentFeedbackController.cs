using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using Website.Data;
using Website.Models;

namespace Website.Controllers
{
    public class ParentFeedbackController : Controller
    {
        ApplicationDbContext dbContext = new ApplicationDbContext();

        public ActionResult Index()
        {
            return View(dbContext.VendorPrograms.ToList());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(IFormCollection form)
        {

            var comment = form["Comment"].ToString();
            int vendorId;
            Int32.TryParse(form["VendorProgramId"].ToString(), out vendorId);
            int rating;
            Int32.TryParse(form["Rating"].ToString(), out rating);

            ParentFeedback feedback = new ParentFeedback()
            {

                VendorProgramId = vendorId,
                Comment = comment,
                Rating = rating,
                Date = DateTime.Now
            };

            dbContext.ParentFeedbacks.Add(feedback);
            dbContext.SaveChanges();

            return RedirectToAction("Details", "VendorPrograms", new { id = vendorId });
        }

        // POST: ParentFeedbacks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind("Id,Comment,Date,VendorProgramId,Rating")] ParentFeedback feedbackComment)
        {
            if (ModelState.IsValid)
            {
                dbContext.ParentFeedbacks.Add(feedbackComment);
                dbContext.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(feedbackComment);
        }

        // GET: ParentFeedbacks/Edit/5
        public ActionResult Edit(int? id)
        {        
            ParentFeedback feedbackComment = dbContext.ParentFeedbacks.Find(id);         
            return View(feedbackComment);
        }

        // POST: ParentFeedbacks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind("Id,Comment,Date,VendorProgramId,Rating")] ParentFeedback feedbackComment)
        {
            if (ModelState.IsValid)
            {
                dbContext.Entry(feedbackComment).State = EntityState.Modified;
                dbContext.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(feedbackComment);
        }

        // GET: ParentFeedbacks/Delete/5
        public ActionResult Delete(int? id)
        {          
            ParentFeedback feedbackComment = dbContext.ParentFeedbacks.Find(id);           
            return View(feedbackComment);
        }

        // POST: ParentFeedbacks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ParentFeedback feedbackComment = dbContext.ParentFeedbacks.Find(id);
            dbContext.ParentFeedbacks.Remove(feedbackComment);
            dbContext.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                dbContext.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
