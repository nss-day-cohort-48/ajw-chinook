-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(invoiceid), invoicedate
FROM invoice
WHERE invoicedate < '2010-01-01' AND invoicedate > '2008-12-31' OR invoicedate < '2012-01-01' AND invoicedate > '2010-12-31'


-- WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'