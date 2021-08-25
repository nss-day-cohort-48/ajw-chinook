top_2009_agent.sql: Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.


SELECT employee.FirstName || " " || employee.LastName AS FullName, MAX(invoice.total) AS TotalSales
FROM Invoice
JOIN Customer
ON invoice.CustomerId = customer.CustomerId
JOIN Employee
ON customer.SupportRepId = Employee.EmployeeId
WHERE invoice.invoicedate > '2009-01-01' AND invoice.invoicedate < '2009-12-31'
GROUP BY Employee.EmployeeId AND invoice.total

