-- What are the respective total sales for each of those years?

SELECT SUM(total), invoicedate
FROM invoice
WHERE invoicedate < '2010-01-01' AND invoicedate > '2008-12-31' OR invoicedate < '2012-01-01' AND invoicedate > '2010-12-31'