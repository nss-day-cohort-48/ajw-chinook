-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT employee.FirstName || " " || employee.LastName AS fullName, invoice.invoiceid
FROM Customer
INNER JOIN Employee ON employee.EmployeeId = customer.supportrepid
INNER JOIN Invoice
ON invoice.CustomerId = customer.CustomerId