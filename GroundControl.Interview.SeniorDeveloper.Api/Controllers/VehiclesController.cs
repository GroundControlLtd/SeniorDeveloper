using System.Collections.Generic;
using GroundControl.Interview.SeniorDeveloper.Model;
using Microsoft.AspNetCore.Mvc;

namespace GroundControl.Interview.SeniorDeveloper.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VehiclesController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetMakes()
        {
            IEnumerable<VehicleMake> result = new List<VehicleMake> { new() { Id = 1, Name = "Test Make" } };
            // Get results from database 
            return Ok(result);
        }

        [HttpGet]
        [Route("{makeId}/models")]
        public IActionResult GetModels(int makeId)
        {
            // using the makeId parameter, get the results from the database
            IEnumerable<VehicleModel> result = new List<VehicleModel> {new() { Id = 1, Name = "Test Model"  }, new() { Id = 2, Name = "Test Model 2" } };
            return Ok(result);
        }
    }
}
