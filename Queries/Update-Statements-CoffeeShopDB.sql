-- Set salary to 6000 for the employee whose first name is 'Hassen'
UPDATE Employees
SET Salary = 6000
WHERE FirstName = 'Hassen'
SELECT * FROM Employees

-- Update the bill date of bill number 200 to the current date:
UPDATE Bills 
SET Bill_Date = GETDATE()
WHERE Bill_Number = 24878
SELECT * FROM Bills