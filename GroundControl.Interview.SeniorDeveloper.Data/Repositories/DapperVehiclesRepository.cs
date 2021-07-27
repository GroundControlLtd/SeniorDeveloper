using Dapper;
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

        private readonly string Sp_GetAllMakes = "Usp_Vehicle_GetAllMakes";
        private readonly string Sp_GetModelsByMake = "Usp_Vehicle_GetModelsByMake";

        public DapperVehiclesRepository(IDbConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }

        // Todo if time - error handling around results/data access for these two functions
        public async Task<IEnumerable<VehicleMake>> GetMakesAsync()
        {
            var results = await _dbConnection.QueryAsync<VehicleMake>(Sp_GetAllMakes, CommandType.StoredProcedure);

            return results;
        }

        public async Task<IEnumerable<VehicleModel>> GetModelsByMakeAsync(int makeId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MakeId", makeId);

            var results = await _dbConnection.QueryAsync<VehicleModel>(Sp_GetModelsByMake, parameters, commandType: CommandType.StoredProcedure);

            return results;
        }
    }
}