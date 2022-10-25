SELECT
	s.title AS cancao,
  COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.listening_history AS l
	ON s.song_id = l.song_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;