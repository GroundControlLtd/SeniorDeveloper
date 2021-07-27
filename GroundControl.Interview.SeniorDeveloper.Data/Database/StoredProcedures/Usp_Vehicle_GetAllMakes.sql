CREATE PROCEDURE [Usp_Vehicle_GetAllMakes]
AS
BEGIN
	SELECT
		[MakeId],
		[Make]
	FROM
		[VehicleMake]
END
GO