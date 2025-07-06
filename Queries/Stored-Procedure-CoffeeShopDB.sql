-- Stotred Procedure
-- Show all bills for a specific customer
CREATE PROCEDURE Show_Bills_By_Customer
	@CustomerName NVARCHAR(30)
AS
BEGIN
	SELECT * 
	FROM Bills
	WHERE Customer_Name = @CustomerName
END;

-- Execute Show_Bills_By_Customer
EXEC Show_Bills_By_Customer @CustomerName = 'Sarah'