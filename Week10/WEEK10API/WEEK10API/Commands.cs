using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Text.Json.Serialization;

namespace WEEK10API
{
    public class Commands
    {
        private string SqlConString { get; set; } = string.Empty;
        public void PrepareSQLConnectionString()
        {
            if (SqlConString == string.Empty)
            {
                SqlConnectionStringBuilder SqlConBuilder = new SqlConnectionStringBuilder();
                SqlConBuilder["server"] = @"(localdb)\MSSQLLocalDB";
                SqlConBuilder["Trusted_Connection"] = true;
                SqlConBuilder["Integrated Security"] = "SSPI";
                SqlConBuilder["Initial Catalog"] = "PROG260FA22";
                SqlConString = SqlConBuilder.ToString();
            }
        }

        public List<MonsterData> GetAllFromTable()
        {
            List<MonsterData> monsterData = new List<MonsterData>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetAllMonsters";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var r = com.ExecuteReader();
                    while (r.Read())
                    {
                        monsterData.Add(Format(r));
                    }
                    r.Close();
                }
                conn.Close();
            }
            return monsterData;
        }

        public void DeleteById(int id)
        {
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spDeleteByID";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ID", id);
                    com.ExecuteNonQuery();
                }
            }
        }

        public MonsterData GetById(int id)
        {
            MonsterData monsterData = new MonsterData();

            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetByID";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ID", id);
                    var r = com.ExecuteReader();
                    while (r.Read())
                    {
                        monsterData = Format(r);
                    }
                    r.Close();
                }
                conn.Close();
            }
            return monsterData;
        }

        public void UpdateByID(MonsterData monster)
        {
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spUpdateByID";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ID", monster.ID);
                    com.Parameters.AddWithValue("@Name", monster.Name);
                    com.Parameters.AddWithValue("@Type", monster.Type);
                    com.Parameters.AddWithValue("@HP", monster.HP);
                    com.Parameters.AddWithValue("@MP", monster.MP);
                    com.Parameters.AddWithValue("@Location", monster.Location);
                    com.ExecuteNonQuery();
                }
            }
        }

        private MonsterData Format(SqlDataReader format)
        {
            MonsterData result = new MonsterData();
            format.ID = (int)format["id"];
            format.Name = (string)format["Name"];
            format.Type = (string)format["Type"];
            format.HP = (int)format["HP"];
            format.MP = (int)format["MP"];
            format.Location = (string)format["Location"];
            return result;
        }
    }
}
