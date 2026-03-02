
/*
Create Database and Schemas

SCRIPT PURPOSE:
The purpose of this script is check if 'DataWarehouse' Database exists, if it exists then this script will recreate it. 
Additionaly this script creates 3 schemas 'bronze','silver', and 'gold'

WARNING:
Running this script will delete all database if exists.
Don't run it until you ensure that you have backups for this database

*/

USE master;

GO
--Drop and recreate the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK INMEDIATE;
	DROP DATABASE DataWarehouse;
END

--Create the database 
CREATE DATABASE DataWarehouse


GO

USE DataWarehouse

GO
--Create Schemas
CREATE SCHEMA bronze;

GO

CREATE SCHEMA silver;

GO

CREATE SCHEMA gold;
