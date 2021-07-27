USE [master]
GO
ALTER DATABASE [cm27072021] SET CONTAINMENT = PARTIAL
GO

USE [cm27072021]
CREATE USER cm27072021
WITH PASSWORD = 'cm27072021-()'
GO

USE [cm27072021]
GO
ALTER ROLE [db_owner] ADD MEMBER [cm27072021]
GO

-- ToDo - if time, might be convenient to bundle these three scripts into the garage.sql script