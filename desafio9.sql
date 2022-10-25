SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.listening_history AS lh
	ON u.user_id = lh.user_id
WHERE u.name = 'Barbara Liskov';