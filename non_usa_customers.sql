-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT FirstName, LastName, customerid
FROM Customer
WHERE customer.country != "USA"