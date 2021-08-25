Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT DISTINCT billingcountry AS Country, COUNT(invoiceid) AS InvoiceTotals
FROM Invoice
GROUP BY invoice.billingcountry
