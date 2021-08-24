Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT DISTINCT track.name, invoicelineid, artist.name
FROM InvoiceLine
JOIN Track
ON invoiceline.trackid = track.trackid
JOIN Album
ON track.Albumid = album.albumid
JOIN Artist
ON album.artistid = artist.artistId
WHERE invoiceline.trackid = track.trackid

