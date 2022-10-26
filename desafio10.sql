SELECT
	s.title AS nome,
  COUNT(*) AS reproducoes
FROM  SpotifyClone.listening_history AS lh
	INNER JOIN SpotifyClone.users AS u
		ON lh.user_id = u.user_id
	INNER JOIN SpotifyClone.songs AS s
		ON lh.song_id = s.song_id
	INNER JOIN SpotifyClone.plans AS p
		ON u.plan_id = p.plan_id
WHERE p.name IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome ASC;