SELECT 
	title AS nome_musica,
  CASE
    WHEN title LIKE '%Bard%' THEN REPLACE(title, 'Bard', 'QA')
    WHEN title LIKE '%Amar%' THEN REPLACE(title, 'Amar', 'Code Review')
    WHEN title LIKE '%Pais' THEN REPLACE(title, 'Pais', 'Pull Requests')
    WHEN title LIKE '%SOUL' THEN REPLACE(title, 'SOUL', 'CODE')
    WHEN title LIKE '%SUPERSTAR' THEN REPLACE(title, 'SUPERSTAR', 'SUPERDEV')
    ELSE title
  END AS novo_nome
FROM SpotifyClone.songs
HAVING nome_musica <> novo_nome
ORDER BY nome_musica DESC;