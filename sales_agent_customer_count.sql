-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
--     Employee full name
--     Total number of customers assigned to each employee (even if it's zero).

SELECT employee.FirstName || " " || employee.LastName AS EmployeeName, COUNT(customer.supportRepId) AS TotalCustomers
FROM Employee
JOIN Customer
ON employee.EmployeeId = customer.SupportRepId
GROUP BY customer.SupportRepId


