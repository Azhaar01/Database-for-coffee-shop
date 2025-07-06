-- Add a constraint to ensure 'Salary' is greater than 0
ALTER TABLE Employees
ADD CONSTRAINT CHK_Salary_Positive CHECK (Salary > 0)

-- Change Bill_Date column to NOT NULL
ALTER TABLE Bills
ALTER COLUMN Bill_Date DATE NOT NULL

-- Delete the record from PRODUCT_TYPE where the Type_number is '60000'
DELETE FROM Product_Type
WHERE Type_Number = 6000;