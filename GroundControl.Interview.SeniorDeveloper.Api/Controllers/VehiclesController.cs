using GroundControl.Interview.SeniorDeveloper.Data.Contracts;
using GroundControl.Interview.SeniorDeveloper.Model;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VehiclesController : ControllerBase
    {
        private readonly IVehiclesRepository _vehiclesRepository;

        public VehiclesController(IVehiclesRepository vehiclesRepository)
        {
            _vehiclesRepository = vehiclesRepository;
        }

        //ToDo if time - returning 200 OK but not actually error handling

        [HttpGet]
        [Route("makes")]
        [ProducesResponseType(200)]
        public async Task<ActionResult<IEnumerable<VehicleMake>>> GetMakesAsync()
        {
            var results = await _vehiclesRepository.GetMakesAsync();

            return Ok(results);
        }

        [HttpGet]
        [Route("models/{makeId}")]
        [ProducesResponseType(200)]
        public async Task<ActionResult<IEnumerable<VehicleModel>>> GetModelsByMakeAsync(int makeId)
        {
            var results = await _vehiclesRepository.GetModelsByMakeAsync(makeId);

            // ToDo - Might need to take this out for time sake if it requires error handling in the web, but this is better practice
            if (results == null || !results.Any())
            {
                return NotFound();
            }

            return Ok(results);
        }
    }
}