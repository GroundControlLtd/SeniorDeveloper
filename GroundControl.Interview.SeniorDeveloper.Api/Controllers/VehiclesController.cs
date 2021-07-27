using GroundControl.Interview.SeniorDeveloper.Data.Contracts;
using GroundControl.Interview.SeniorDeveloper.Model;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
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

            return Ok(results);
        }
    }
}