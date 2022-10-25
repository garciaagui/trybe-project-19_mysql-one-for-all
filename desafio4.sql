SELECT
	u.name AS usuario,
    IF (MAX(YEAR(l.reproduction_date)) >= 2021, 
		'Usuário ativo', 
      'Usuário inativo') AS status_usuario
FROM SpotifyClone.listening_history AS l
INNER JOIN SpotifyClone.users AS u
	ON l.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;