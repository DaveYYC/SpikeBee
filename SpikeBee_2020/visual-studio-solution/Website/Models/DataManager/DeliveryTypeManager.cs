using System.Collections;
using System.Linq;
using Website.Data;

namespace Website.Models.DataManager
{
    public class DeliveryTypeManager
    {
        public static IList GetAsKeyValuePairs()
        {
            var context = new ApplicationDbContext();
            var types = context.DeliveryTypes.Select(type => new
            {
                Value = type.Id,
                Text = type.Type,
            }).ToList();
            return types;
        }
    }
}
