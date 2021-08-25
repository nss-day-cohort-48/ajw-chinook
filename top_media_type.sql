-- Provide a query that shows the most purchased Media Type.


SELECT COUNT(track.MediaTypeId), MediaType.name
FROM InvoiceLine
JOIN Track
ON track.TrackId = InvoiceLine.trackId
JOIN MediaType
ON MediaType.MediaTypeId = track.MediaTypeId
GROUP BY track.MediaTypeId
LIMIT 1