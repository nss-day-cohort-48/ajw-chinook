-- Provide a query that shows the total sales per country.

SELECT billingcountry, SUM(ROUND(total, 2)) AS Total
FROM Invoice
GROUP BY BillingCountry