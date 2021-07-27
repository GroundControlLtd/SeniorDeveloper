using GroundControl.Interview.SeniorDeveloper.Model;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Api.Queries
{
    public interface IVehicleQueries
    {
        Task<IEnumerable<VehicleMake>> RetreiveAllVehicalMakesAsync();

        Task<IEnumerable<VehicleModel>> RetreiveVehicalModelsByIdAsync(int makeId);
    }
}
