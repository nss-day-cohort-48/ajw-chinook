-- Provide a query that shows the most purchased track(s) of 2013.



SELECT track.name, MAX(invoiceline.trackId) AS TrackTotal
FROM InvoiceLine
JOIN Track
ON track.TrackId = InvoiceLine.TrackId
JOIN Invoice
ON Invoice.InvoiceId = invoiceLine.InvoiceId
WHERE invoice.invoicedate > '2013-01-01' AND invoice.invoicedate < '2013-12-31'
GROUP BY  invoiceLine.TrackId AND track.name