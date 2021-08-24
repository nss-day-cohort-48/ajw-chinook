Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
    Playlist name
    Total number of tracks on each playlist


SELECT DISTINCT playlist.name, COUNT(playlisttrack.trackId)
FROM Playlist
JOIN PlaylistTrack
WHERE PlaylistTrack.PlaylistId = playlist.PlaylistId
GROUP BY playlist.name