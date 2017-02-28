using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITL_System_Administrator.Models.Hotel
{
    public class Booking
    {
        public int BookingId { set; get; }
        public string Customer { set; get; }
        public DateTime CheckIn { set; get; }
        public DateTime CheckOut { set; get; }
        public int Number_Adult { set; get; }
        public int Number_Child { set; get; }
        public Room Room { set; get; }
        public decimal TotalCost { set; get; }
        public string Special_Requirement { set; get; }
    }
}