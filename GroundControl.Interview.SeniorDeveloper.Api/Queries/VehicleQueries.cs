using Dapper;
using GroundControl.Interview.SeniorDeveloper.Api.Context;
using GroundControl.Interview.SeniorDeveloper.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Api.Queries
{
    public class VehicleQueries : IVehicleQueries
    {

        private readonly DapperContext _context;

        public VehicleQueries(DapperContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<VehicleMake>> RetreiveAllVehicalMakesAsync()
        {
            using (var connection = _context.CreateConnection())
            {
                return await connection.QueryAsync<VehicleMake>(@"SELECT v.[MakeId] as Id, v.[Make] as Name
                     FROM [Garage].[dbo].[VehicleMake] v
                     ORDER BY v.[MakeId]");
            }
        }

        public async Task<IEnumerable<VehicleModel>> RetreiveVehicalModelsByIdAsync(int makeId)
        {
            using (var connection = _context.CreateConnection())
            {
                return await connection.QueryAsync<VehicleModel>(@"SELECT m.[ModelId] as Id ,m.[Model] as Name
                     FROM [Garage].[dbo].[VehicleModel] m
                     WHERE m.[MakeId] = @makeId", new { makeId });
            }
        }
    }
}
