-- Selecione todos os registros da tabela de artistas, ordenando pelo nome em ordem alfabética.
SELECT *
FROM Artist a
ORDER BY a.Name ;


-- Liste todas as músicas com duração maior que 5 minutos.
SELECT *
FROM Track t 
WHERE t.Milliseconds > 300000; -- 300000ms = 300s = 5m


-- Selecione todas as músicas do gênero Rock.
SELECT *
FROM Genre g;
	--Método 1
	SELECT *
	FROM Track t 
	WHERE t.GenreId = 1; -- Aqui precisa assumir que sabe o ID do gênero de rock
	
	--Método 2
	SELECT *
	FROM Track t
	INNER JOIN Genre g
		ON g.GenreId = t.GenreId 
	WHERE g.Name LIKE 'Rock'; -- Aqui não se assume o conhecimento do ID do gênero

	
-- Liste os álbuns junto com o nome do artista correspondente.
SELECT 
	a.Title as 'Título Album',
	ar.Name as 'Nome Artista'
FROM Album a 
INNER JOIN Artist ar
	ON a.ArtistId  = ar.ArtistId
ORDER BY ar.Name;


-- Selecione todas as músicas que pertencem ao álbum “Let There Be Rock”.
SELECT *
FROM Track t 
INNER JOIN Album a 
	ON a.AlbumId = t.AlbumId 
WHERE a.Title LIKE 'Let There Be Rock';


-- Liste os clientes que moram no Brasil.
SELECT *
FROM Customer c 
WHERE c.Country LIKE 'Bra_il';


-- Exiba o total de músicas por gênero, ordenando do maior para o menor.
SELECT COUNT(*) as 'Número de músicas'
FROM Track t 
GROUP BY t.GenreId 
ORDER BY COUNT(*) DESC; -- Essa versão não dá pra saber qual é o gênero na tabela

SELECT
	g.Name as 'Gênero',
	COUNT(*) as 'Número de músicas'
FROM Track t
INNER JOIN Genre g 
	ON g.GenreId = t.GenreId 
GROUP BY g.GenreId 
ORDER BY COUNT(*) DESC; -- Essa versão é possível ver o relacionamento


-- Selecione todas as músicas que possuem a palavra “Love” no nome. 
SELECT *
FROM Track t
WHERE t.Name LIKE '%Love%';