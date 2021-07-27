using System.Text.Json.Serialization;

namespace GroundControl.Interview.SeniorDeveloper.Model
{
    public class VehicleMake
    {
        [JsonPropertyName("id")]
        public int Id { get; set; }

        [JsonPropertyName("name")]
        public string Name { get; set; }
    }
}