SELECT * FROM country;

SELECT * FROM country WHERE LifeExpectancy >= 75;
 
SELECT * FROM country WHERE IndepYear IS null;
 
SELECT * FROM countrylanguage WHERE isOfficial = 'T'; 

SELECT 
		COUNT(*) AS 'Quantidade de países' 
FROM country; 

SELECT 
		COUNT(*) AS 'Quantidade de cidades' 
FROM city; 

SELECT
		DISTINCT language
FROM countrylanguage;

SELECT * FROM city WHERE CountryCode LIKE '%BRA%';

SELECT * FROM city WHERE Population = (
	SELECT MAX(Population) FROM city
);

SELECT * FROM city WHERE Population = (
	SELECT MIN(Population) FROM city
);

SELECT Name FROM city WHERE Population = (
	SELECT MAX(Population) FROM city
);

SELECT Name FROM city WHERE Population = (
	SELECT MAX(Population) FROM city WHERE CountryCode LIKE '%BRA%'
);

SELECT Name FROM city WHERE Population = (
	SELECT MIN(Population) FROM city 
);

SELECT Language FROM countrylanguage WHERE CountryCode LIKE '%DEU%';

SELECT
		SUM(POPULATION) AS 'Soma população das cidades'
	FROM city
WHERE CountryCode LIKE '%BRA%';

SELECT
		AVG(Population) AS 'Média da população'
	FROM city
WHERE CountryCode LIKE '%IND%';

SELECT
		AVG(LifeExpectancy) AS 'Média da expectativa de vida'
FROM country;