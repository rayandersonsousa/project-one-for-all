SELECT DISTINCT usuario.username AS usuario,
COUNT(h.play_history) AS qt_de_musicas_ouvidas,
ROUND(SUM(s.duration_seconds / 60), 2) AS total_minutos
FROM SpotifyClone.users AS usuario
INNER JOIN
    SpotifyClone.history AS h
ON
    usuario.user_id = h.user_id
INNER JOIN
    SpotifyClone.songs AS s
ON
    h.play_history = s.song_id
GROUP BY usuario
ORDER BY usuario;