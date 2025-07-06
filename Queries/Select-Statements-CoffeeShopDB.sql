-- Count total number of bills
SELECT COUNT(*) AS 'Number of bills'
FROM Bills;

-- Count the number of bills for each customer
SELECT Customer_Name, COUNT(Bill_Number) AS 'NumberOfBills'
FROM Bills
GROUP BY Customer_Name;

-- Sum of prices paid by each customer
SELECT Customer_Name, SUM(Price) AS 'SUM OF Prices'
FROM Bills
GROUP BY Customer_Name;

-- Total sales for each customer (Price multiplied by Quantity)
SELECT Customer_Name, FORMAT(SUM(Price * Amount_of_Product), 'N2') AS 'Total Sales'
FROM Bills
GROUP BY Customer_Name;

-- Names of customers who do NOT have any bills 
SELECT a.First_Name, a.Last_Name
FROM Customers a
LEFT JOIN Bills b ON a.CustomerID = b.customerID
WHERE b.customerID IS NULL;

-- Names of products ordered by a specific customer (e.g., AbdAlaziz)
SELECT Product_Name 
FROM Bills
WHERE Customer_Name = 'AbdAlaziz';

-- Names of products that cost more than 9 Riyals
SELECT Product_Name
FROM CoffeeProducts
WHERE Cost_of_Product > 9.0;

-- Names of products ordered by cost in ascending order
SELECT Product_Name, Cost_of_Product
FROM CoffeeProducts
ORDER BY Cost_of_Product;

-- Names of products that were never ordered in any bill
SELECT Product_Name
FROM CoffeeProducts
WHERE Product_Number NOT IN (SELECT Product_Number FROM Bills);

-- Show customer name, bill number, and bill date
SELECT Customer_Name, Bill_Number, Bill_Date
FROM Bills;

-- Bills that contain more than two products (Amount_of_Product > 2)
SELECT *
FROM Bills
WHERE Amount_of_Product > 2;

-- Names of employees with salaries less than 5500
SELECT CONCAT(FirstName, ' ', LastName) AS Employee_Name
FROM Employees
WHERE Salary < 5500;

-- Count of bills printed by each employee
SELECT E.FirstName, E.LastName, COUNT(P.Bill_Number) AS PrintedBills
FROM Employees E 
JOIN Prints P ON E.EmployeeID = P.EmployeeID
GROUP BY E.FirstName, E.LastName;

-- Count of orders taken by each employee (using the Take_Order table)
SELECT E.FirstName, E.LastName, COUNT(*) AS OrderTaken
FROM Employees E 
JOIN Take_Order Tk ON E.EmployeeID = Tk.EmployeeID
GROUP BY E.FirstName, E.LastName;

-- Branch name, number of customers, and number of products in the branch
SELECT 
	B.Name, 
	COUNT(DISTINCT C.CustomerID) AS 'NumberOFCustomers',
	COUNT(DISTINCT P.Product_Number) AS 'NumberOFProducts'
FROM CoffeeShoptable B 
	JOIN Customers C ON B.ShopID = C.ShopID
	JOIN CoffeeProducts P ON C.ShopID = P.ShopID
GROUP BY B.Name;