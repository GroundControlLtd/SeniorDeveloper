using System.Text.Json.Serialization;

namespace GroundControl.Interview.SeniorDeveloper.Model
{
    // ToDo - really bad seperation of models as Data, Api and Web all share the same model
    // If time - create separate models and mappers for these
    public class VehicleMake
    {
        [JsonPropertyName("id")]
        public int Id { get; set; }

        [JsonPropertyName("name")]
        public string Name { get; set; }
    }
}