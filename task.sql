-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Warehouse(
    ID INT AUTO_INCREMENT,
    WarehouseName VARCHAR(50),
    WarehouseAddressCity VARCHAR(50),
    WarehouseAddressStreet VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Products(
    ID INT AUTO_INCREMENT,
    ProductName VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT,
    WarehouseID INT,
    ProductID INT,
    WarehouseAmount INT,
    CountryID INT,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
	FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE NO ACTION,
	FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Countries (ID,Name)
	VALUES (1, 'Country1');
INSERT INTO Countries (ID,Name)
	VALUES (2, 'Country2');

INSERT INTO Warehouse (ID, WarehouseName, WarehouseAddressCity, WarehouseAddressStreet)
	VALUES (1, 'Warehouse-1', 'City-1', 'Street-1');
INSERT INTO Warehouse (ID, WarehouseName, WarehouseAddressCity, WarehouseAddressStreet)
	VALUES (2, 'Warehouse-2', 'City-2', 'Street-2');

INSERT INTO Products (ID, ProductName)
	VALUES (1, 'AwersomeProduct');
INSERT INTO ProductAmount (ID, ProductName)
	VALUES (2, 'AwersomeProduct');


INSERT INTO ProductInventory (ID, WarehouseID, ProductID, CountryID)
	VALUES (1, 1, 1, 2, 1);
INSERT INTO ProductInventory (ID, WarehouseID, ProductID, CountryID)
	VALUES (2, 2, 2, 5, 2);
