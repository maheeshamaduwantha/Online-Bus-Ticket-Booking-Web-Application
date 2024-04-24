using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SLTBweb
{
    public class BusDetails
    {
        public int BusID { get; set; }
        public string BusName { get; set; }
        public string DepartureTime { get; set; }
        public string ArivalTime { get; set; }
        public int AvailableSeats { get; set; }
        public decimal Fare { get; set; }
        public string Origin { get; set; }
        public string Destination { get; set; }
    }
}