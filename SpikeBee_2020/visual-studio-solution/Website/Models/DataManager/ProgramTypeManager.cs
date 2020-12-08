using System.Collections;
using System.Linq;
using Website.Data;

namespace Website.Models.DataManager
{
    public class ProgramTypeManager
    {
        public static IList GetAsKeyValuePairs()
        {
            var context = new ApplicationDbContext();
            var types = context.ProgramTypes.Select(type => new
            {
                Value = type.Id,
                Text = type.Type,
            }).ToList();
            return types;
        }
        public static IList GetAsKeyImagePairs()
        {
            var context = new ApplicationDbContext();
            var types = context.ProgramImages.Select(type => new
            {
                Value = type.Id,
                Text = type.FilePath,
            }).ToList();
            return types;
        }
    }
}
