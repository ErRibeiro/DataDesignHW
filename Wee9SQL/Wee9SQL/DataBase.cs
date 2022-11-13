using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Wee9SQL
{
    public class DataBase
    {
        SqlConnectionStringBuilder mySqlConBldr = new SqlConnectionStringBuilder();
        string sqlConStr;
        public string SPname;
        public List<ReportObject1> r1 = new List<ReportObject1>();
        public List<ReportObject2> r2 = new List<ReportObject2>();
        public List<ReportObject3> r3 = new List<ReportObject3>();
        public List<ReportObject4> r4 = new List<ReportObject4>();

        public void Connect()
        {
            mySqlConBldr["server"] = @"(localdb)\MSSQLLocalDB";
            mySqlConBldr["Trusted_Connection"] = true;
            mySqlConBldr["Integrated Security"] = "SSPI";
            mySqlConBldr["Initial Catalog"] = "PROG260FA22";
            sqlConStr = mySqlConBldr.ToString();
        }

        public void Report1()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {

                SPname = "spReport1";
                using (var com = new SqlCommand(SPname, conn))
                {
                    conn.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    using (SqlDataReader r = com.ExecuteReader())
                    {
                        Console.WriteLine("\n\nReporN1\n");

                        for (int i = 0; i < r.FieldCount; i++)
                        {
                            Console.Write($"{r.GetName(i)}, ");
                        }
                        Console.WriteLine("");

                        string s = "";
                        while (r.Read())
                        {
                            for (int i = 0; i < r.FieldCount; i++)
                            {
                                Console.Write($"{r[i]}, ");
                                s += $"{ r[i]}, ";

                            }
                            r1.Add(new ReportObject1(r[0].ToString(), r[1].ToString(), r[2].ToString(), r[3].ToString(), r[4].ToString()));
                            s = "";
                            Console.WriteLine("");

                        }
                    }
                    conn.Close();
                }
            }
        }

        public void WriteTableOne()
        {
           
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {
                conn.Open();
                for (int i = 0; i < r1.Count(); i++)
                {
                    try
                    {
                        SPname = "InsertTable1";
                        using (SqlCommand command = new SqlCommand(SPname, conn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@StudentID", r1[i].id);
                            command.Parameters.AddWithValue("@FullName", r1[i].name);
                            command.Parameters.AddWithValue("@SSN", r1[i].ssn);
                            command.Parameters.AddWithValue("@FullAddress", r1[i].address);
                            command.Parameters.AddWithValue("@Phone", r1[i].phone);
                           
                            command.ExecuteNonQuery();
                            
                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                }
                conn.Close();
            }
        }

        public void Report2()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {

                SPname = "spReport2";
                using (var com = new SqlCommand(SPname, conn))
                {
                    conn.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    using (SqlDataReader r = com.ExecuteReader())
                    {
                        Console.WriteLine("\n\nReporN2\n");

                        for (int i = 0; i < r.FieldCount; i++)
                        {
                           // Console.Write($"{r.GetName(i)}, ");
                        }
                        Console.WriteLine("");

                        string s = "";
                        while (r.Read())
                        {
                            for (int i = 0; i < r.FieldCount; i++)
                            {
                                Console.Write($"{r[i]}, ");
                                s += $"{ r[i]}, ";

                            }
                            r2.Add(new ReportObject2(r[0].ToString(), r[1].ToString(), r[2].ToString(), r[3].ToString(), r[4].ToString(), r[5].ToString()));
                            s = "";
                            Console.WriteLine("");
                        }
                    }
                    conn.Close();
                }
            }
        }

        public void WriteTableTwo()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {
                conn.Open();
                for (int i = 0; i < r2.Count(); i++)
                {
                    try
                    {
                        SPname = "InsertTable2";
                        using (SqlCommand command = new SqlCommand(SPname, conn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@StudentID", r2[i].id);
                            command.Parameters.AddWithValue("@FullName", r2[i].name);
                            command.Parameters.AddWithValue("@Total", r2[i].total);
                            command.Parameters.AddWithValue("@Incomplete", r2[i].incomplete);
                            command.Parameters.AddWithValue("@Complete", r2[i].complete);
                            command.Parameters.AddWithValue("@Progress", r2[i].progress);
                            command.ExecuteNonQuery();

                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                }
                conn.Close();
            }
        }

        public void Report3()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {

                SPname = "spReport3";
                using (var com = new SqlCommand(SPname, conn))
                {
                    conn.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    using (SqlDataReader r = com.ExecuteReader())
                    {
                        Console.WriteLine("\n\nReporN3\n");

                        for (int i = 0; i < r.FieldCount; i++)
                        {
                            // Console.Write($"{r.GetName(i)}, ");
                        }
                        Console.WriteLine("");

                        string s = "";
                        while (r.Read())
                        {
                            for (int i = 0; i < r.FieldCount; i++)
                            {
                                Console.Write($"{r[i]}, ");
                                s += $"{ r[i]}, ";

                            }
                            r3.Add(new ReportObject3(r[0].ToString(), r[1].ToString(), r[2].ToString(),r[3].ToString()));
                            s = "";
                            Console.WriteLine("");
                        }
                    }
                    conn.Close();
                }
            }
        }
        
        public void WriteTableThree()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {
                conn.Open();
                for (int i = 0; i < r3.Count(); i++)
                {
                    try
                    {
                        SPname = "InsertTable3";
                        using (SqlCommand command = new SqlCommand(SPname, conn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@Code", r3[i].code);
                            command.Parameters.AddWithValue("@Complete", r3[i].complete);
                            command.Parameters.AddWithValue("@Failed", r3[i].faildrop);
                            command.Parameters.AddWithValue("@Enrolled", r3[i].enrolled);
                            command.ExecuteNonQuery();

                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                }
                conn.Close();
            }
        }

        public void Report4()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {

                SPname = "spReport4";
                using (var com = new SqlCommand(SPname, conn))
                {
                    conn.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    using (SqlDataReader r = com.ExecuteReader())
                    {
                        Console.WriteLine("\n\nReporN4\n");

                        for (int i = 0; i < r.FieldCount; i++)
                        {
                            Console.Write($"{r.GetName(i)}, ");
                        }
                        Console.WriteLine("");

                        string s = "";
                        while (r.Read())
                        {
                            for (int i = 0; i < r.FieldCount; i++)
                            {
                                Console.Write($"{r[i]}, ");
                                s += $"{ r[i]}, ";

                            }
                            r4.Add(new ReportObject4(r[0].ToString(), r[1].ToString(), r[2].ToString()));
                            s = "";
                            Console.WriteLine("");
                        }
                    }
                }
            }
        }

        public void WriteTableFour()
        {
            using (SqlConnection conn = new SqlConnection(sqlConStr))
            {
                conn.Open();
                for (int i = 0; i < r4.Count(); i++)
                {
                    try
                    {
                        SPname = "InsertTable4";
                        using (SqlCommand command = new SqlCommand(SPname, conn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@Code", r4[i].code);
                            command.Parameters.AddWithValue("@IDs", r4[i].ids);
                            command.Parameters.AddWithValue("@State", r4[i].state);
                            command.ExecuteNonQuery();

                        }
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                }
                conn.Close();
            }
        }

    }
}
