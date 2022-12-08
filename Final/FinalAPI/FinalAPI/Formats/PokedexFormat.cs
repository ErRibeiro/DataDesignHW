using System.Text.Json.Serialization;
namespace FinalAPI
{
    public class PokedexFormat
    {
        [JsonPropertyName("id")]
        public int ID { get; set; }
        [JsonPropertyName("Name")]
        public string Name { get; set; }
    }
}
