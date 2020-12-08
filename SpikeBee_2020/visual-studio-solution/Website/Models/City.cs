namespace Website.Models
{
    public class City
    {
        public int CityId { get; set; }
        public string CityName { get; set; }
        public int ProvinceId { get; set; }



        //Navigation properties
        public Province Province { get; set; }
        public VendorProgram VendorProgram { get; set; }
    }
}
