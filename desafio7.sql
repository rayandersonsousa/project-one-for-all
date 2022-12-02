SELECT a.artist_name AS artista, al.album_name AS album,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.following_artists AS f
ON f.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;