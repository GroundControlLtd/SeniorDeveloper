using GroundControl.Interview.SeniorDeveloper.Api.Queries;
using GroundControl.Interview.SeniorDeveloper.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class VehiclesController : ControllerBase
    {

        private readonly IVehicleQueries _vehicleQueries;

        /// <summary>
        /// constructor
        /// </summary>
        /// <param name="vehicleQueries"></param>
        public VehiclesController(IVehicleQueries vehicleQueries)
        {
            _vehicleQueries = vehicleQueries ?? throw new ArgumentNullException(nameof(vehicleQueries));
        }

        /// <summary>
        /// Returns all vehical makes. 
        /// </summary>
        /// <remarks>
        /// The purpose of this endpoint to retreive all the vehical makes from the database.
        /// </remarks>
        /// <returns>A VehicleMake</returns>
        [HttpGet]
        [ProducesResponseType(typeof(IEnumerable<VehicleMake>), (int)HttpStatusCode.OK)]
        public async Task<ActionResult<IEnumerable<VehicleMake>>> GetMakesAsync() => Ok(await _vehicleQueries.RetreiveAllVehicalMakesAsync());

        /// <summary>
        /// Returns relevent models per makeId.
        /// </summary>
        /// <remarks>
        /// The purpose of this endpoint to retreive vehical model from the database per makeId.
        /// </remarks>
        /// <param name="makeId"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("{makeId}/models")]
        [ProducesResponseType(typeof(IEnumerable<VehicleModel>), (int)HttpStatusCode.OK)]
        public async Task<ActionResult<IEnumerable<VehicleModel>>> GetModelsAsync(int makeId) => Ok(await _vehicleQueries.RetreiveVehicalModelsByIdAsync(makeId));
        
    }
}
