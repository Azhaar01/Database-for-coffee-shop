-- Create the CoffeeShopDB database
CREATE DATABASE CoffeeShopDB

-- Select the CoffeeShopDB for use
USE CoffeeShopDB

-- Create all necessary tables
CREATE TABLE CoffeeShoptable(
ShopID CHAR(9) Primary KEY,
Name VARCHAR(15) UNIQUE NOT NULL,
City VARCHAR(50),
Street VARCHAR(50),
ZipCode VARCHAR(5) NOT NULL
);

CREATE TABLE Product_Type(
Type_Number CHAR(5) PRIMARY KEY,
Tyoe_of_Product VARCHAR(15) NOT NULL
);

CREATE TABLE CoffeeProducts(
Product_Number CHAR(5) PRIMARY KEY,
Product_Name VARCHAR(15) NOT NULL UNIQUE,
Type_Number CHAR(5),
Cost_of_Product DECIMAL(6,2) NOT NULL,
ShopID CHAR(9),
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID) ON DELETE CASCADE,
FOREIGN KEY (Type_Number) REFERENCES Product_Type(Type_Number) ON DELETE CASCADE
);

CREATE TABLE Customers (
CustomerID CHAR(9) PRIMARY KEY,
First_Name VARCHAR(15),
Middle_Name VARCHAR(15),
Last_Name VARCHAR(15),
City VARCHAR(15),
Street VARCHAR(15),
ZipCode VARCHAR(5) NOT NULL,
ShopID CHAR(9),
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID) ON DELETE CASCADE
);

CREATE TABLE Bills(
Bill_Number CHAR(5) PRIMARY KEY,
customerID CHAR(9),
Customer_Name VARCHAR(15),
Product_Number CHAR(5),
Product_Name VARCHAR(15),
Bill_Date DATE,
Amount_of_Product VARCHAR(15) NOT NULL,
Price DECIMAL(6,2) NOT NULL,
ShopID CHAR(9),
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
FOREIGN KEY (Product_Number) REFERENCES CoffeeProducts(Product_Number)
);

CREATE TABLE Employees (
EmployeeID CHAR(9) PRIMARY KEY,
FirstName VARCHAR(15),
MiddleName VARCHAR(15),
LastName VARCHAR(15),
Birth_date DATE, 
Sex CHAR CHECK (Sex IN ('F', 'M')),
City VARCHAR(15),
Street VARCHAR(15),
ZipCode VARCHAR(5) NOT NULL,
Salary DECIMAL(6,2),
ShopID CHAR(9),
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID) ON DELETE CASCADE
);

CREATE TABLE Dependents (
EmployeeID CHAR(9),
Name VARCHAR(15),
Sex CHAR CHECK(Sex IN ('F', 'M')),
Birth_date DATE,
Relationship VARCHAR(10),
PRIMARY KEY (EmployeeID, Name),
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE
);

CREATE TABLE Suppliers (
SupplierID CHAR(9) PRIMARY KEY,
First_Name VARCHAR(15),
Middle_Name VARCHAR(15),
Last_Name VARCHAR(15),
Product_Number CHAR(5),
City VARCHAR(15), 
Street VARCHAR(15),
ZipCode VARCHAR(5) NOT NULL,
Amount VARCHAR(15),
ShopID CHAR(9),
FOREIGN KEY (Product_Number) REFERENCES CoffeeProducts(Product_Number) ON DELETE CASCADE,
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID)
);

CREATE TABLE Contain(
Product_Number CHAR(5),
Bill_Number CHAR(5),
FOREIGN KEY (Product_Number) REFERENCES CoffeeProducts(Product_Number) ON DELETE CASCADE,
FOREIGN KEY (Bill_Number) REFERENCES Bills(Bill_Number)
);

CREATE TABLE Buys (
CustomerID CHAR(9),
Product_Number CHAR(5),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
FOREIGN KEY (Product_Number) REFERENCES CoffeeProducts(Product_Number)
);

CREATE TABLE Take_Order(
EmployeeID CHAR(9),
CustomerID CHAR(9),
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Make(
EmployeeID CHAR(9),
Product_Number CHAR(5),
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
FOREIGN KEY (Product_Number) REFERENCES CoffeeProducts(Product_Number) ON DELETE CASCADE
);

CREATE TABLE Prints(
EmployeeID CHAR(9),
Bill_Number CHAR(5),
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
FOREIGN KEY (Bill_Number) REFERENCES Bills(Bill_Number) ON DELETE CASCADE
);

CREATE TABLE Phone_Number(
Phone_Number CHAR(10) PRIMARY KEY,
ShopID CHAR(9),
FOREIGN KEY (ShopID) REFERENCES CoffeeShoptable(ShopID) ON DELETE CASCADE
);