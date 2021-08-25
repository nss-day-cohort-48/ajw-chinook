-- Provide a query that shows the top 5 most purchased tracks over all.


SELECT track.name, MAX(invoiceline.trackId) AS TrackTotal
FROM InvoiceLine
JOIN Track
ON track.TrackId = InvoiceLine.TrackId
JOIN Invoice
ON Invoice.InvoiceId = invoiceLine.InvoiceId
GROUP BY  invoiceLine.TrackId
ORDER BY invoiceline.trackid DESC
LIMIT 5