using IdentityExploration.Areas.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(Website.Areas.Identity.IdentityHostingStartup))]
namespace Website.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) =>
            {

                // Add email service

                services.AddTransient<IEmailSender, EmailSender>();
            });
        }
    }
}