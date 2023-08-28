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
