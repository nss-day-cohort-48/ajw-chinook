-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT FirstName, LastName, invoiceid, invoiceDate, billingCountry
FROM Customer
JOIN Invoice
ON customer.customerId = invoice.customerid
WHERE customer.country = "Brazil"