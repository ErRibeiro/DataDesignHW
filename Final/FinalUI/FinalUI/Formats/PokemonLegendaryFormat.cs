using System.Text.Json.Serialization;
namespace FinalUI
{
    public class PokemonLegendaryFormat
    {
        [JsonPropertyName("id")]
        public int ID { get; set; }
        [JsonPropertyName("Legendary")]
        public string Legendary { get; set; }
    }
}
