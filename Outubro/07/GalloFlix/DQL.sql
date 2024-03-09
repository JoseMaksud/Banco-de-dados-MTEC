-- SQL - DQL - Data Query Language - Linguagem de Consulta de Dados
-- Criar uma consulta para exibir todos os filmes
SELECT
	   *
  FROM Movie;
  
SELECT
	   Title,
       MovieYear,
       Duration,
       AgeRating
  FROM Movie;

-- Exibir os filmes de 2006
SELECT
	   Title,
       MovieYear,
       Duration,
       AgeRating
  FROM Movie
 WHERE MovieYear = 2006; 

-- Criar uma consulta para exibir todos os filmes entre os anos de 1990 e 2010
SELECT
		Title     AS 'Título',
        MovieYear AS 'Ano de Estreia',
        Duration  AS 'Duração (min.)',
        AgeRating AS 'Classificação Etária'
  FROM Movie
 WHERE MovieYear >= 1990 AND MovieYear <= 2010;  -- <>   !=

SELECT
		Title     AS 'Título',
        MovieYear AS 'Ano de Estreia',
        Duration  AS 'Duração (min.)',
        AgeRating AS 'Classificação Etária'
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

-- Exibir uma lista dos anos que tem filme
SELECT
	   DISTINCT MovieYear
  FROM Movie
ORDER BY MovieYear;

-- FUNÇÕES AGREGADAS
-- Exibir QUANTOS filmes estreiaram entre 2000 e 2020
-- Contagem - COUNT
SELECT
	   COUNT(*) AS 'Qtde. Filmes entre 2000 e 2020'
  FROM Movie
 WHERE MovieYear BETWEEN 2000 AND 2020;

-- Exibir uma lista dos anos que tem filme com a quantidade de filme no ano
SELECT
	   MovieYear AS 'Ano de Estreia',
       COUNT(*)  AS 'Qtde de Filmes'
  FROM Movie
GROUP BY MovieYear
ORDER BY MovieYear;

-- Exibir a MENOR duração entre todos os filmes cadastros
-- Mínimo - Min
SELECT
	   MIN(Duration) AS 'Menor duração'
  FROM Movie;

-- Exibir a MAIOR duração entre todos os filmes cadastros
-- Maximo - Max
SELECT
	   MAX(Duration) AS 'Maior duração'
  FROM Movie;

-- Exibir a Somatória da duração entre todos os filmes cadastros
-- Somatória - Sum
SELECT
	   SUM(Duration) AS 'Qtde. de minutos para assistir todos os filmes'
  FROM Movie;

SELECT
	   SUM(Duration)/60 AS 'Qtde. de horas para assistir todos os filmes'
  FROM Movie;

SELECT
	   (SUM(Duration)/60)/24 AS 'Qtde. de dias para assistir todos os filmes'
  FROM Movie;
  
-- Exibir a média de duração dos filmes cadastros
-- Média Aritmética
SELECT
	   SUM(Duration)/COUNT(*) AS 'Média das durações'
  FROM Movie;

SELECT
	   AVG(Duration) AS 'Média das durações'
  FROM Movie;


-- Subconsulta
-- Exibe o filme com maior duração
SELECT MAX(Duration) FROM Movie;  -- 207
SELECT * FROM Movie WHERE Duration = 207;

SELECT * FROM Movie WHERE Duration = (
	SELECT MAX(Duration) FROM Movie
);

-- Exiba os filmes de 1994, 2006, 2007, 2010
SELECT * FROM Movie WHERE
MovieYear = 1994 OR MovieYear = 2006 OR MovieYear = 2007 OR MovieYear = 2010;

SELECT * FROM Movie WHERE
MovieYear IN (1994, 2006, 2007, 2010);

-- Exiba os filmes de Terror
SELECT * FROM Genre WHERE Name LIKE 'Terror'; -- Id 27
SELECT * FROM MovieGenre WHERE GenreId = 27;
SELECT * FROM Movie WHERE Id IN (32, 51, 61);

SELECT * FROM Movie WHERE Id IN (
	SELECT MovieId FROM MovieGenre WHERE GenreId = (
		SELECT Id FROM Genre WHERE Name LIKE 'Drama'
    )
);

