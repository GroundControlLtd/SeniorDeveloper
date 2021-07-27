CREATE PROCEDURE [Usp_Vehicle_GetModelsByMake]
(
	@MakeId INT
)
AS
BEGIN
	SELECT
		[ModelId],
		[Model]
	FROM
		[VehicleModel]
END
GO