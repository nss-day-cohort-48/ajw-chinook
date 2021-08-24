Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT DISTINCT COUNT(invoiceid), billingcountry
FROM Invoice
GROUP BY invoice.billingcountry
