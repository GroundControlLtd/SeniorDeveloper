using GroundControl.Interview.SeniorDeveloper.Api.Controllers;
using GroundControl.Interview.SeniorDeveloper.Api.Queries;
using GroundControl.Interview.SeniorDeveloper.Model;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace GroundControl.Interview.SeniorDeveloper.UnitTests.Application
{
    public class VehiclesWebApiTest
    {
        private readonly Mock<IVehicleQueries> _vehicleQueriesMock;

        public VehiclesWebApiTest()
        {
            _vehicleQueriesMock = new Mock<IVehicleQueries>();
        }

        [Fact]
        public async Task Get_vehicals_success()
        {
            //Arrange
            var fakeDynamicResult = Enumerable.Empty<VehicleMake>();

            _vehicleQueriesMock.Setup(x => x.RetreiveAllVehicalMakesAsync())
                .Returns(Task.FromResult(fakeDynamicResult));

            //Act
            var vehiclesController = new VehiclesController(_vehicleQueriesMock.Object);
            var actionResult = await vehiclesController.GetMakesAsync();

            //Assert
            Assert.Equal((actionResult.Result as OkObjectResult).StatusCode, (int)System.Net.HttpStatusCode.OK);

        }


        [Fact]
        public async Task Get_models_success()
        {
            //Arrange
            var fakemakeId = 3;
            var fakeDynamicResult = Enumerable.Empty<VehicleModel>();

            _vehicleQueriesMock.Setup(x => x.RetreiveVehicalModelsByIdAsync(It.IsAny<int>()))
                .Returns(Task.FromResult(fakeDynamicResult));

            //Act
            var vehiclesController = new VehiclesController(_vehicleQueriesMock.Object);
            var actionResult = await vehiclesController.GetModelsAsync(fakemakeId);

            //Assert
            Assert.Equal((actionResult.Result as OkObjectResult).StatusCode, (int)System.Net.HttpStatusCode.OK);

        }
    }
}
