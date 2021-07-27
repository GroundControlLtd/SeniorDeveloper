using GroundControl.Interview.SeniorDeveloper.Data.Contracts;
using GroundControl.Interview.SeniorDeveloper.Model;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Data.Repositories
{
    public class DapperVehiclesRepository : IVehiclesRepository
    {
        // Use DTO models for the data layer and implement a mapper to the API models, if time near the end
        private readonly IDbConnection _dbConnection;

        private const string SP_GETALLMAKES = "Usp_Vehicle_GetAllMakes";
        private const string SP_GETMODELSBYMAKE = "Usp_Vehicle_GetModelsByMake";

        public DapperVehiclesRepository(IDbConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }

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