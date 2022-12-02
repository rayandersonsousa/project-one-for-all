SELECT a.artist_name AS artista,
al.album_name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON a.artist_id = al.artist_id
WHERE artist_name LIKE 'Elis%'
ORDER BY album;