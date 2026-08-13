-- Cadastrando o gênero MPB
SELECT *
FROM Genre g
WHERE g.Name LIKE 'MPB';

INSERT INTO Genre (GenreId, Name)
VALUES (NULL, 'MPB'); -- novo ID = 26

-- Cadastrando um artista
SELECT *
FROM Artist a 
WHERE a.Name LIKE 'Toquinho'

INSERT INTO Artist (Name)
VALUES ('Toquinho') -- novo ID = 276

-- Cadastrando uma música do Toquinho
SELECT *
FROM Track t
WHERE t.GenreId = 26;

INSERT INTO Track
VALUES (NULL, 'Aquarela', NULL, 1, 26, 'Toquinho', 276721, 239171, 1.99),
(NULL, 'Onde anda você', NULL, 1, 26, 'Toquinho e Vinicius de Morais', 276721, 239171, 1.99),
(NULL, 'Regra Três', NULL, 1, 26, 'Toquinho', 276721, 239171, 1.99)

-- Cadastrar álbum do Toquinho
SELECT * 
FROM Album a
WHERE a.Title LIKE '%Toquinho%'; -- novo ID = 348

INSERT INTO Album 
VALUES (NULL, 'As melhores de Toquinho', 276);

-- Atualizar o álbum id para as músicas do Toquinho
-- filtro para colocar no UPDATE, ela não encontrará nada depois de aplicar o UPDATE
SELECT *
FROM Track t
WHERE t.AlbumId IS NULL
AND t.Composer LIKE '%Toquinho%';

UPDATE Track 
SET AlbumId = 348
WHERE AlbumId IS NULL
AND Composer LIKE '%Toquinho%';

SELECT *
FROM Track t
-- WHERE t.AlbumId IS NULL
WHERE t.Composer LIKE '%Toquinho%';

-- Excluir faturas que são maiores ou iguais a 20 e o estado do faturamento não seja vazio.
SELECT *
FROM Invoice i 
WHERE i.Total >= 20
AND i.BillingState IS NOT NULL;

DELETE 
FROM Invoice
WHERE Total >= 20
AND BillingState IS NOT NULL;

-- Excluir todas as faturas onde CEP de cobrança é nulo ou vazio
SELECT *
FROM Invoice i 
WHERE i.BillingPostalCode IS NULL;

DELETE
FROM Invoice 
WHERE BillingPostalCode IS NULL;