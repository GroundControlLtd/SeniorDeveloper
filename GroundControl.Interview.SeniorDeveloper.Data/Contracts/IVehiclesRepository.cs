using GroundControl.Interview.SeniorDeveloper.Model;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GroundControl.Interview.SeniorDeveloper.Data.Contracts
{
    public interface IVehiclesRepository
    {
        public Task<IEnumerable<VehicleMake>> GetMakesAsync();

        public Task<IEnumerable<VehicleModel>> GetModelsByMakeAsync(int makeId);
    }
}