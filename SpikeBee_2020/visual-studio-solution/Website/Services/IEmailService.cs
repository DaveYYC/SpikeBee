using Website.Models;

namespace Website.Services
{
    public interface IEmailService
    {
        void Send(EmailMessage message);
    }
}
