SELECT
	COUNT(DISTINCT s.title) AS cancoes,
  COUNT(DISTINCT art.name) AS artistas,
  COUNT(DISTINCT alb.name) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.artists AS art
	ON s.artist_id = art.artist_id
INNER JOIN SpotifyClone.albums AS alb
	ON s.album_id = alb.album_id;