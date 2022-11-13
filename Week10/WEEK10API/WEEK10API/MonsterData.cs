using System.Text.Json.Serialization;
namespace WEEK10API
{
    public class MonsterData
    {
        [JsonPropertyName("id")]
        public int ID { get; set; }
        [JsonPropertyName("Name")]
        public string Name { get; set; }
        [JsonPropertyName("Type")]
        public string Type { get; set; }
        [JsonPropertyName("HP")]
        public int HP { get; set; }
        [JsonPropertyName("MP")]
        public int MP { get; set; }
        [JsonPropertyName("Location")]
        public string Location { get; set; }
    }
}
