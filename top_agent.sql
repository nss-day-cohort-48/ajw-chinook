Which sales agent made the most in sales over all?

SELECT employee.FirstName || " " || employee.LastName AS FullName, MAX(invoice.total) AS TotalSales
FROM Invoice
JOIN Customer
ON invoice.CustomerId = customer.CustomerId
JOIN Employee
ON customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId AND invoice.total