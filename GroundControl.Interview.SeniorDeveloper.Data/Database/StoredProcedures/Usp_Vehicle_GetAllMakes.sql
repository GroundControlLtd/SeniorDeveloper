CREATE PROCEDURE [Usp_Vehicle_GetAllMakes]
AS
BEGIN
	SELECT
		[MakeId] AS Id,
		[Make] AS [Name]
	FROM
		[VehicleMake]
END
GO