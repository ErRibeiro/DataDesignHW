using System.Text.Json.Serialization;
namespace FinalAPI
{
    public class PokemonMatchUpsFormat
    {
        [JsonPropertyName("id")]
        public int ID { get; set; }
        [JsonPropertyName("Advantage")]
        public string Advantage { get; set; }
        [JsonPropertyName("Disadvantage")]
        public string Disadvantage { get; set; }
        [JsonPropertyName("Immune")]
        public string Immune { get; set; }
    }
}
