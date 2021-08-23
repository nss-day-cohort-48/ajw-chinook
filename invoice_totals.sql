-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT Total, firstName || " " || lastName as fullName, country, supportRepId
FROM Customer
JOIN Invoice