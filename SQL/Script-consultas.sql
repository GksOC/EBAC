SELECT * FROM Customer c; 

SELECT FirstName, LastName
FROM Customer
LIMIT 10;

SELECT *
FROM Artist a 
ORDER BY Name DESC;

-- Selecionar clientes de uma cidade específica
SELECT *
FROM Customer c 
WHERE City = 'São Paulo';

-- Selecionar clientes de um país específico
SELECT FirstName, LastName, Country
FROM Customer c
WHERE c.Country = 'Brazil';

-- Selecionar faturas com operador lógico de comparação
SELECT *
FROM Invoice i 
WHERE Total > 5.00;

-- Selecionar faturas com filtro de país e estadoo
SELECT *
FROM Invoice i 
WHERE i.BillingCountry = 'Brazil'
AND i.BillingState = 'SP'
AND Total >= 5.00;

-- Selecionar todos os emails que tenha a plavra yahoo
SELECT * 
FROM Customer c 
WHERE c.Email LIKE '%yahoo%';

-- Selecionar todos os clientes do Brasil
SELECT *
FROM Customer c 
WHERE c.Country LIKE 'Bra_il';

-- Selecionar músicas cujo tempo seja entre 100 a 300 segundos
SELECT *
FROM Track t 
WHERE t.Milliseconds  BETWEEN 100000 AND 300000;

-- Selecionar todos os clientes que não estão no Brasil ou USA
SELECT *
FROM Customer c 
WHERE c.Country NOT IN ('Brazil', 'USA');
