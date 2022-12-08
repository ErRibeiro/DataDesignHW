using System.Text.Json.Serialization;
namespace FinalUI
{
    public class PokemonStatsFormat
    {
        [JsonPropertyName("HP")]
        public int HP { get; set; }
        [JsonPropertyName("Atk")]
        public int Atk { get; set; }
        [JsonPropertyName("SpAtk")]
        public int SpAtk { get; set; }
        [JsonPropertyName("Def")]
        public int Def { get; set; }
        [JsonPropertyName("SpDef")]
        public int SpDef { get; set; }
        [JsonPropertyName("Speed")]
        public int Speed { get; set; }
    }
}
