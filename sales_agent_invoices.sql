-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT FirstName || " " || LastName AS fullName, invoiceid
FROM Employee
JOIN Invoice
ON invoice.CustomerId = employee.EmployeeId
WHERE Title LIKE "%Sales%"