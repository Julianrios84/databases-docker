CREATE DATABASE DesignPatters;
GO

USE DesignPatters;
GO

CREATE TABLE Beer (
	BeerId INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Style VARCHAR(50) NOT NULL
);
GO

USE DesignPatters;
GO

CREATE LOGIN DesignPatters_Login WITH PASSWORD='DesignPatters@123456',DEFAULT_DATABASE=DesignPatters;
GO

CREATE USER UserDesignPatters FOR LOGIN DesignPatters_Login WITH DEFAULT_SCHEMA=dbo;
GO

ALTER ROLE db_owner ADD MEMBER UserDesignPatters;
GO


-- dotnet ef dbcontext scaffold 'Server=localhost,1433;Database=DesignPatters;User ID=sa;Password=Mssql@0001;TrustServerCertificate=true;' Microsoft.EntityFrameworkCore.SqlServer --output-dir Models
