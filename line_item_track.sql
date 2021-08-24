Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT DISTINCT track.name, invoicelineid
FROM InvoiceLine
JOIN Track
WHERE invoiceline.trackid = track.trackid