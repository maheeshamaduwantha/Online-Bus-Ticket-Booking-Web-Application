using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SLTBweb
{
    /// <summary>
    /// Summary description for BusBookingService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class BusBookingService : System.Web.Services.WebService
    {

        [WebMethod]
        public List<BusDetails> GetBusDetails()
        {
            List<BusDetails> busDetails = new List<BusDetails>();

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SLTBBusBookingConnectionString"].ToString()))
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("GetBusDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    BusDetails bus = new BusDetails
                    {
                        BusID = Convert.ToInt32(reader["BusID"]),
                        BusName = reader["BusName"].ToString(),
                        AvailableSeats = Convert.ToInt32(reader["AvailableSeats"]),
                        Fare = Convert.ToDecimal(reader["Fare"]),
                        Origin = reader["Origin"].ToString(),
                        Destination = reader["Destination"].ToString(),
                    };

                    // Check for null values before parsing
                    if (reader["DepartureTime"] != DBNull.Value)
                    {
                        bus.DepartureTime = TimeSpan.Parse(reader["DepartureTime"].ToString()).ToString();
                    }

                    if (reader["ArivalTime"] != DBNull.Value)
                    {
                        bus.ArivalTime = TimeSpan.Parse(reader["ArivalTime"].ToString()).ToString();
                    }


                    busDetails.Add(bus);
                }
            }

            return busDetails;
        }
    }
}