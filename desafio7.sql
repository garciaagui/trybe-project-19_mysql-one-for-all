SELECT DISTINCT
	art.name AS artista,
	alb.name AS album,
  COUNT(*) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
	ON  art.artist_id =  alb.artist_id
INNER JOIN SpotifyClone.following_overview AS fo 
	ON  art.artist_id = fo.artist_id
GROUP BY alb.name, art.name
ORDER BY seguidores DESC, artista ASC, album ASC;