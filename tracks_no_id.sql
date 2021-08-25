Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
    Album name
    Media type
    Genre


SELECT track.name AS track, album.title AS album, mediatype.name AS mediaType, genre.name AS genre, track.composer, track.milliseconds, track.bytes, track.unitprice
FROM Track
JOIN Album
ON track.AlbumId = album.AlbumId
JOIN MediaType
ON MediaType.mediatypeid = track.MediaTypeId
JOIN Genre
ON genre.GenreId = track.GenreId

