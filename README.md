# ☕️ Coffee Shop Database Project - README

## 🗃 Project Overview
This project simulates a real-world database system for a **Coffee Shop**, built using **Microsoft SQL Server**. The system handles shop branches, customers, products, orders, employees, and billing through structured relational design and SQL commands.

---

## 🛠️ Q1: DESIGN Phase

### ✅ Entities & Attributes
The database consists of the following main entities with meaningful attributes:

- **Coffee_Shop**: `ShopID`, `Name`, `City`, `Street`, `ZipCode`
- **Product_Type**: `Type_Number`, `Type_of_Product`
- **CoffeeProducts**: `Product_Number`, `Product_Name`, `Type_Number`, `Cost_of_Product`, `ShopID`
- **Customers**: `CustomerID`, `First_Name`, `Middle_Name`, `Last_Name`, `City`, `Street`, `ZipCode`, `ShopID`
- **Bills**: `Bill_Number`, `CustomerID`, `Customer_Name`, `Product_Number`, `Product_Name`, `Bill_Date`, `Amount_of_Product`, `Price`, `ShopID`
- **Employees**: `EmployeeID`, `FirstName`, `MiddleName`, `LastName`, `Birth_date`, `Sex`, `City`, `Street`, `ZipCode`, `Salary`, `ShopID`
- **Dependents**: `EmployeeID`, `Name`, `Sex`, `Birth_date`, `Relationship`
- **Suppliers**: `SupplierID`, `First_Name`, `Middle_Name`, `Last_Name`, `Product_Number`, `City`, `Street`, `ZipCode`, `Amount`, `ShopID`
- **Contain**: `Product_Number`, `Bill_Number`
- **Buys**: `CustomerID`, `Product_Number`
- **Take_Order**: `EmployeeID`, `CustomerID`
- **Make**: `EmployeeID`, `Product_Number`
- **Prints**: `EmployeeID`, `Bill_Number`
- **Phone_Number**: `Phone_Number`, `ShopID`

### ✅ Relationships
- One-to-many and many-to-many relationships are handled via foreign keys and bridge tables (e.g., `Contain`, `Buys`, `Make`).
- Cascading actions (`ON DELETE CASCADE`) are used where logically appropriate.

### ✅ ER Diagram
![ER Diagram](https://github.com/Azhaar01/Database-for-coffee-shop/blob/main/ER%20digram%20for%20coffee%20shop%20DataBase.png)

### ✅ Mapped Relational Schema
The ER diagram was successfully mapped into a normalized relational schema using SQL tables, including primary and foreign key constraints.

![Relational database Schema](https://github.com/Azhaar01/Database-for-coffee-shop/blob/main/Relational-database-schema.png)

---

## 💻 Q2: IMPLEMENTATION Phase

### ✅ Data Insertion
Several meaningful records were inserted into the major tables such as `Bills`, `Customers`, `CoffeeProducts`, `Employees`, `Suppliers`, etc., to reflect realistic business operations.

### 🔍 Select Queries
1. Count total number of bills  
2. Count the number of bills for each customer  
3. Sum of prices paid by each customer  
4. Total sales for each customer (Price x Quantity)  
5. Customers who do NOT have any bills  
6. Products ordered by customer 'AbdAlaziz'  
7. Products that cost more than 9 SAR  
8. Products ordered sorted by cost  
9. Products never ordered  
10. Customer name, bill number, and bill date  
11. Bills with more than 2 products  
12. Employees with salaries < 5500  
13. Number of bills printed by each employee  
14. Number of orders taken by each employee  
15. Branch name with number of customers and products

### ✅ Update Queries
- Update salary to 6000 for an employee  
- Update bill date using `GETDATE()`

### ✅ Alter & Delete
- Add constraint to check salary > 0  
- Make `Bill_Date` NOT NULL  
- Delete a row from `Product_Type`

### ✅ Stored Procedure

```sql
CREATE PROCEDURE Show_Bills_By_Customer
	@CustomerName NVARCHAR(30)
AS
BEGIN
	SELECT * 
	FROM Bills
	WHERE Customer_Name = @CustomerName
END;

-- Execute
EXEC Show_Bills_By_Customer @CustomerName = 'Sarah';
```

## 🔒 Q3: Constraints & Normalization

- Primary keys and foreign keys applied to maintain referential integrity.
- Naming conventions used consistently.
- Database design follows Third Normal Form (3NF):
- No partial dependencies
- No transitive dependencies
- Attributes are fully functionally dependent on the primary key

### 📷 Output Samples

[Output/Output-Insert-Into-Employees.png]
___
