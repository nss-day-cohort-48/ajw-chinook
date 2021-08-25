Provide a query that shows all Invoices. The resultant table should include:
    InvoiceId
    The total number of line items on each invoice


SELECT invoice.InvoiceId, COUNT(invoicelineid)
FROM Invoice
JOIN InvoiceLine
ON InvoiceLine.InvoiceId = invoice.InvoiceId 
GROUP BY invoice.InvoiceId