using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Inclassfinal
{
    internal class Database
    {
        string SqlConString = "";
        List<PData> dataP = new List<PData>();

        public void Connect()
        {
            SqlConnectionStringBuilder mySqlConBldr = new SqlConnectionStringBuilder();
            mySqlConBldr["server"] = "(localdb)\\MSSQLLocalDB";
            mySqlConBldr["Trusted_Connection"] = true;
            mySqlConBldr["Integrated Security"] = "SSPI";
            mySqlConBldr["Initial Catalog"] = "PROG260FA22";

            SqlConString = mySqlConBldr.ToString();
        }

        public void InsertPassangerData(List<PData> pdata)
        {
            string spName = "spInsertTableData";
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                foreach (var item in pdata)
                {
                    using (SqlCommand com = new SqlCommand(spName, conn))
                    {
                        com.CommandType = CommandType.StoredProcedure;
                        //com.Parameters.AddWithValue("@ID",item.ID);
                        com.Parameters.AddWithValue("@FirstName", item.FName);
                        com.Parameters.AddWithValue("@LastName", item.LName);
                        com.Parameters.AddWithValue("@email", item.email);
                        com.ExecuteNonQuery();

                    }
                }
                conn.Close();
            }
        }

        public void InsertPassangerFlightData(List<PFData> pfdata)
        {
            string spName = "spInsertTableDataFlight";
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                foreach (var item in pfdata)
                {
                    using (SqlCommand com = new SqlCommand(spName, conn))
                    {
                        com.CommandType = CommandType.StoredProcedure;
                        com.Parameters.AddWithValue("@PassangerID", item.ID);
                        com.Parameters.AddWithValue("@ContinentDeparture", item.ContinentDeparture);
                        com.Parameters.AddWithValue("@ContinentArrival", item.ContinentArrival);
                        com.Parameters.AddWithValue("@flightNumber", item.flightNumber);
                        com.Parameters.AddWithValue("@flightDuration", item.flightDuration.ToString("0.00"));
                        com.ExecuteNonQuery();

                    }
                }
                conn.Close();
            }
        }
    }
}
