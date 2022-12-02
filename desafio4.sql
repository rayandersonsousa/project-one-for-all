SELECT u.username AS usuario,
  IF(YEAR(MAX(h.play_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history as h
ON u.user_id = h.user_id
GROUP BY usuario
ORDER BY usuario;