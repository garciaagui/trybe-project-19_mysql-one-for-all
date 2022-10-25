SELECT
	u.name AS usuario,
  COUNT(*) AS qt_de_musicas_ouvidas,
	ROUND(SUM(s.duration_seconds)/60,2) AS total_minutos
FROM SpotifyClone.listening_history AS l
INNER JOIN SpotifyClone.users AS u
	ON l.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s
	ON l.song_id = s.song_id
GROUP BY usuario
ORDER BY usuario;