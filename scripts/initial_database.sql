/* 
==========================================================
Create Database and Schemas 
==========================================================

Script purpose:
  This script creates a new database named 'Datawarehouse' after checking if already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  Within the database: 'bronze','silver', 'gold'.

WARNING: 
    Running this script will drop the entire 'Datawarehouse' database if it exists.
    All the database will be permanently deleted. Proceed with caution and ensure 
    you have proper backups before running this scripts.

*/


USE master;
GO 

-- Drop and recreate the 'DataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END
GO

--Create a 'Datawarehouse' database 

CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO 
CREATE SCHEMA gold;
GO
