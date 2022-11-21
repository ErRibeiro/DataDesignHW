using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms.DataVisualization.Charting;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace Week11
{
    public class Charts
    {

        private string SqlConString { get; set; } = string.Empty;
        public void Connect()
        {
            if (SqlConString == string.Empty)
            {
                //Get all the server connection info when the engine is instantiated
                SqlConnectionStringBuilder SqlConBuilder = new SqlConnectionStringBuilder();

                SqlConBuilder["server"] = @"(localdb)\MSSQLLocalDB";
                SqlConBuilder["Trusted_Connection"] = true;
                SqlConBuilder["Integrated Security"] = "SSPI";
                SqlConBuilder["Initial Catalog"] = "PROG260FA22";

                //String for opening connections to the SQL server
                SqlConString = SqlConBuilder.ToString();
            }
        }

        public List<Chart1> Chart1Data()
        {
            List<Chart1> list = new List<Chart1>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = $@"[dbo].[Chart1]";

                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var r = com.ExecuteReader();
                    while (r.Read())
                    {
                        Chart1 c1 = new Chart1();
                        c1.state = (string)r["Location"];
                        c1.count = (int)r["MonsterCount"];

                        list.Add(c1);
                    }
                    r.Close();
                }
                conn.Close();
            }
            return list;
        }

        public List<Chart2> Chart2Data()
        {
            List<Chart2> list = new List<Chart2>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = $@"[dbo].[Chart2]";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var r = com.ExecuteReader();
                    while (r.Read())
                    {
                        Chart2 c2 = new Chart2();
                        c2.HP = (int)r["HP"];
                        c2.count = (int)r["Count"];

                        list.Add(c2);
                    }
                    r.Close();
                }
                conn.Close();
            }
            return list;
        }

        public List<Chart3> GetChartThree()
        {
            List<Chart3> list = new List<Chart3>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = $@"[dbo].[Chart3]";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var r = com.ExecuteReader();
                    while (r.Read())
                    {
                        Chart3 c3 = new Chart3();
                        c3.HP = (int)r["HP"];
                        c3.MP = (int)r["MP"];

                        list.Add(c3);
                    }
                    r.Close();
                }
                conn.Close();
            }
            return list;
        }

    }
}
