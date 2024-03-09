-- SQL - DQL - Data Query Language - Linguagem de Consulta de Dados
-- Criar uma consulta para exibir todos os filmes
SELECT
		Title,
        MovieYear,
        Duration,
        AgeRating
  FROM Movie;

-- Criar uma consulta para exibir todos os filmes entre os anos de 1990 e 2010
SELECT
		Title,
        MovieYear,
        Duration,
        AgeRating
  FROM Movie
 WHERE MovieYear >= 1990 AND MovieYear <= 2010;  -- <>   !=

SELECT
		Title,
        MovieYear,
        Duration,
        AgeRating
  FROM Movie
 WHERE MovieYear BETWEEN 1990 AND 2010
ORDER BY MovieYear;
 

-- Criar uma consulta para exibir todos os filmes com duração maior de 150 minutos
SELECT
		Title,
        MovieYear,
        Duration,
        AgeRating
 FROM Movie
 WHERE Duration > 150
ORDER BY Duration DESC;

-- Criar uma consulta para exibir todos os filmes com 'guerra' no titulo do filme
SELECT
		*
 FROM Movie
WHERE Title LIKE '%guerra%';

-- FUNÇÕES AGREGADAS 
-- Exibir QUANTOS filmes etreiaram entre 2000 e 2020
-- Contagem
SELECT 
		COUNT(*) AS 'Qtde. Filmes entre 2000 e 2020'
	FROM Movie
  WHERE MovieYear BETWEEN 2000 AND 2020;
  
-- Exibir a MENOR duração entre todos os filmes cadastrados
-- Minimo
SELECT
	   MIN(Duration) AS 'Menor duração'
  FROM Movie
