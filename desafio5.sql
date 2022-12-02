SELECT song_name AS cancao,
COUNT(h.play_history) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON s.song_id = h.play_history
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;