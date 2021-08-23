-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(invoiceid), invoiceid
FROM invoiceline
WHERE invoiceid = 37