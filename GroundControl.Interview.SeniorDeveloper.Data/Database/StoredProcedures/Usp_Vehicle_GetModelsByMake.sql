CREATE PROCEDURE [Usp_Vehicle_GetModelsByMake]
(
	@MakeId INT
)
AS
BEGIN
	SELECT
		[ModelId] AS Id,
		[Model] AS [Name]
	FROM
		[VehicleModel]
	WHERE
		MakeId = @MakeId
END
GO