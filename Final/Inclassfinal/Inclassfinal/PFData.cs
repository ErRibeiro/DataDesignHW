using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inclassfinal
{
    internal class PFData
    {
        //spInsertTableData
        public int ID, flightNumber;
        public float flightDuration;
        public string ContinentDeparture, ContinentArrival;

        public PFData(string _id, string _ContinentDeparture, string _ContinentArrival, string _flightNumber, string _flightDuration)
        {
            ID = Int32.Parse(_id);
            ContinentDeparture = _ContinentDeparture;
            ContinentArrival = _ContinentArrival;
            flightNumber = Int32.Parse(_flightNumber);
            flightDuration = float.Parse(_flightDuration);
        }
    }
}
