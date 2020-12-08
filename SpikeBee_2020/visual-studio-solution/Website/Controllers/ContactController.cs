using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using SendGrid;
using SendGrid.Helpers.Mail;
using System.Threading.Tasks;

namespace Website.Controllers
{
    public class ContactController : Controller
    {
        // Hardcode subject. This should me moved to a private location
        string subject = "Questions/Comments Form Submission";
        private readonly string _apiKey;
        private readonly string _fromEmail;
        // Hardcode _fromName. This should me moved to a private location
        private readonly string _fromName = "Admin@SpikeBee.com";       
        private readonly string _toEmail; 

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Index(string fullName, string email, string phoneNumber, string message)
        {
            // Gather email information 

            // Send email

            await SendEmailAsync(email, (fullName + " - " + " " + subject), phoneNumber, message);

            return RedirectToAction("ContactResult", "Contact");
        }

        public ContactController(IConfiguration config)
        {
            _apiKey = config["SendGrid:ApiKey"];
            _fromEmail = config["SendGrid:FromEmail"];
            // Add SpikeBee email in App secrets or appsettings.json to which the contact email will be sent
            _toEmail = config["SendGrid:ToEmail"];

        }

        // Sends email to email address set in appsettings or App secrets 
        public async Task SendEmailAsync(string email, string subject, string phoneNumber, string message)
        {
            var client = new SendGridClient(_apiKey);
            var msg = new SendGridMessage()
            {
                From = new EmailAddress(_fromEmail, _fromName),
                Subject = subject,

                // Create content of the contact us email
                PlainTextContent = $"\n User's email: {email} \n \n Message:  {message} \n \nPhone Number:  {phoneNumber}\n",
                HtmlContent = $"\n User's email: {email}\n \n Message: { message }\n \nPhoneNumber:  { phoneNumber}\n"
            };
            msg.AddTo(new EmailAddress(_toEmail));

            // Disable click tracking.
            // See https://sendgrid.com/docs/User_Guide/Settings/tracking.html
            msg.SetClickTracking(false, false);

            await client.SendEmailAsync(msg);
        }

        public IActionResult ContactResult()
        {
            return View();
        }
    }


}