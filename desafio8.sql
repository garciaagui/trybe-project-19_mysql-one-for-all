SELECT
	art.name AS artista,
  alb.name AS album
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
	ON art.artist_id = alb.artist_id
WHERE art.name = 'Elis Regina'
ORDER BY album ASC;