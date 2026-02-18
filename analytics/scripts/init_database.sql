/*
===========================
Create Database and Schemas
===========================
Script Purpose:
This script recreates the DataWarehouse database from scratch and sets up
the foundational schemas (bronze, silver, gold) used for data staging,
transformation, and presentation layers.

WARNING:
Running this script will permanently delete the existing DataWarehouse
database and all its data. Make sure you have backups before executing.
*/


USE master;

-- Drop and recreate the 'DataWarehouse' database if exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create DataWarehouse database 
CREATE DATABASE DataWarehouse;
USE DataWarehouse;
GO
--Creating Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
