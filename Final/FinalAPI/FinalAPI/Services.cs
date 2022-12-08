using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Text.Json.Serialization;

namespace FinalAPI
{
    public class Services
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

        public List<PokedexFormat> GetAll()
        {
            List<PokedexFormat> pokedata = new List<PokedexFormat>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetAllPokemon";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        pokedata.Add(GetAllFormat(reader));
                    }
                    reader.Close();
                }
                conn.Close();
            }
            return pokedata;
        }

        public PokemonStatsFormat GetStatsById(int id)
        {
            PokemonStatsFormat pokedata = new PokemonStatsFormat();

            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetStatsByID";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ID", id);
                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        pokedata = GetStatsByIdFormat(reader);
                    }
                    reader.Close();
                }
                conn.Close();
            }
            return pokedata;
        }

        public List<PokemonLegendaryFormat> GetAllLegendaries()
        {
            List<PokemonLegendaryFormat> pokedata = new List<PokemonLegendaryFormat>();
            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetAllLegendaries";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        pokedata.Add(GetAllLegendaryFormat(reader));
                    }
                    reader.Close();
                }
                conn.Close();
            }
            return pokedata;
        }
        
        public PokemonMatchUpsFormat GetMatchUpById(int id)
        {
            PokemonMatchUpsFormat pokedata = new PokemonMatchUpsFormat();

            using (SqlConnection conn = new SqlConnection(SqlConString))
            {
                conn.Open();
                string sp = "spGetMatchupById";
                using (var com = new SqlCommand(sp, conn))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ID", id);
                    var reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        pokedata = GetMathUpFormat(reader);
                    }
                    reader.Close();
                }
                conn.Close();
            }
            return pokedata;
        }


        private PokedexFormat GetAllFormat(SqlDataReader format)
        {
            PokedexFormat result = new PokedexFormat();
            result.ID = (int)format["id"];
            result.Name = (string)format["Pokemon"];
            return result;
        }

        private PokemonLegendaryFormat GetAllLegendaryFormat(SqlDataReader format)
        {
            PokemonLegendaryFormat result = new PokemonLegendaryFormat();
            result.ID = (int)format["Pokemon_ID"];
            result.Legendary = (string)format["Legendary"];
            return result;
        }

        private PokemonStatsFormat GetStatsByIdFormat(SqlDataReader format)
        {
            PokemonStatsFormat result = new PokemonStatsFormat();
            result.HP = (int)format["HP"];
            result.Atk = (int)format["Atk"];
            result.SpAtk = (int)format["SpAtk"];
            result.Def = (int)format["Def"];
            result.SpDef = (int)format["SpDef"];
            result.Speed = (int)format["Speed"];
            return result;
        }

        private PokemonMatchUpsFormat GetMathUpFormat(SqlDataReader format)
        {
            PokemonMatchUpsFormat result = new PokemonMatchUpsFormat();
            result.ID = (int)format["Pokemon_ID"];
            result.Advantage = (string)format["Advantage"];
            result.Disadvantage = (string)format["Disadvantage"];
            result.Immune = (string)format["Immune"];
            return result;
        }
    }
}
