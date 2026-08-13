-- Selecionar o título do album relacionado com o nome do artista
SELECT
	a.Title,
	ar.Name
FROM Album a 
INNER JOIN Artist ar
	ON a.ArtistId = ar.ArtistId 
WHERE ar.Name LIKE 'Iron Maiden';

-- Selecionar o título do album relacionado com o nome do artista e as músicas do album
SELECT
	a.Title as 'Título Album',
	ar.Name as 'Nome Artista',
	t.Name as 'Nome Música',
	t.Composer 
FROM Album a 
INNER JOIN Artist ar
	ON a.ArtistId = ar.ArtistId 
INNER JOIN Track t 
	ON a.AlbumId  = t.AlbumId;

-- criar uma tabela de Artista Favorito
CREATE TABLE ArtistaFavorito (
	favoritoId INTEGER PRIMARY KEY AUTOINCREMENT,
	ArtistId INTEGER NOT NULL,
	Usuario VARCHAR (45),
	FOREIGN KEY (ArtistId) REFERENCES Artist(artistId)
);

SELECT *
FROM ArtistaFavorito;

-- Popular tabela Artita Favorito
INSERT INTO ArtistaFavorito (ArtistId, Usuario)
VALUES 
	(1, 'Fábio'),
	(276, 'Ana'),
	(50, 'Carvalho'),
	(69, 'Marcelo'),
	(22, 'Steve'),
	(144, 'Maria')
	
-- Consultar o artista favorito de cada usuário
SELECT
	af.Usuario,
	a.Name as 'Nome do Artista'
FROM ArtistaFavorito af 
INNER JOIN Artist a
	ON af.ArtistId = a.ArtistId;

-- Deletar uma tabela
DROP TABLE ArtistaFavorito; -- Não faça isso, deu muito trabalho 😭