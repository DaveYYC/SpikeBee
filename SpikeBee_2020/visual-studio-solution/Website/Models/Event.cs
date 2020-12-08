namespace Website.Models
{
    public class Event
    {
        public int Id { get; set; }

        public int VendorProgramId { get; set; }

        public int ProgramScheduleId { get; set; }

        //Navigation properties

        public VendorProgram VendorProgram { get; set; }

        public ProgramSchedule ProgramSchedule { get; set; }
    }
}
