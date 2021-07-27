using GroundControl.Interview.SeniorDeveloper.Data.Contracts;
using GroundControl.Interview.SeniorDeveloper.Model;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Data.Repositories
{
    public class DapperVehiclesRepository : IVehiclesRepository
    {
        // Use DTO models for the data layer and implement a mapper to the API models, if time near the end

        public Task<IEnumerable<VehicleMake>> GetMakesAsync()
        {
            throw new System.NotImplementedException();
        }

        public Task<IEnumerable<VehicleModel>> GetModelsByMakeAsync(int makeId)
        {
            throw new System.NotImplementedException();
        }
    }
}