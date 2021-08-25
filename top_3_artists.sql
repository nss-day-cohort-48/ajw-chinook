-- Provide a query that shows the top 3 best selling artists.

SELECT MAX(artist.name) AS Artist, invoiceline.trackid
FROM InvoiceLine
JOIN Track
ON invoiceline.trackid = track.trackid
JOIN Album
ON track.Albumid = album.albumid
JOIN Artist
ON album.artistid = artist.artistId
WHERE invoiceline.trackid = track.trackid
GROUP BY  artist.name
ORDER BY invoiceline.trackid DESC
LIMIT 3
