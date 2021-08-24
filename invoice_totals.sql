-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT Total, customer.firstName || " " || customer.lastName as fullName, customer.country, supportRepId
FROM Invoice
JOIN Customer on customer.CustomerId = invoice.CustomerId
join Employee on Employee.EmployeeId = customer.SupportRepId
order by customer.LastName