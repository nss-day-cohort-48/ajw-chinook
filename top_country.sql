-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.


SELECT billingcountry, MAX(total) AS Total
FROM Invoice
GROUP BY total AND billingcountry