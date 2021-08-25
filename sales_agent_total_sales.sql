Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)


SELECT employee.FirstName || " " || employee.LastName AS FullName, SUM(invoice.total) AS TotalSales
FROM Employee
JOIN Customer
ON customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON invoice.CustomerId = customer.CustomerId
GROUP BY Employee.EmployeeId