-- 2.	Exibir os países com expectativa de vida (LifeExpectancy) maior que 75 anos.
select * from country where LifeExpectancy > 75;

-- 3.	Exibir os países que NÃO são independentes (IndepYear contém o ano de independência de cada país).
select * from country where IndepYear is null;

-- 4.	Exibir apenas as línguas oficiais (IsOfficial) dos países.
select * from countrylanguage where IsOfficial = 'T';
select * from countrylanguage where IsOfficial like 'T';

-- 5.	Exibir quantos países (country) existem cadastrados.
select count(*) from country;

-- 6.	Exibir quantas cidades (city) existem cadastradas.
select count(*) from city;

-- 7.	Exibir quantas línguas (language) são faladas no mundo (countrylanguage), ignorando as repetidas.
select count(distinct language) from countrylanguage;

-- 8.	Exibir todos os campos das cidades (city) brasileiras.
select * from city where countrycode = 'BRA';
select * from city where countrycode = (
	select code from country where name = 'Brazil'
);

-- 9.	Exibir a quantidade de pessoas da cidade mais populosa do Mundo.
select max(population) from city;

-- 10.	Exibir a quantidade de pessoas da cidade menos populosa do Mundo.
select min(population) from city;

-- 11.	Exibir a cidade mais populosa (population) do Mundo.
select * from city where population = (
	select max(population) from city
);

-- 12.	Exibir a cidade mais populosa (population) do Brasil.
select * from city where population = (
	select max(population) from city where countrycode = 'BRA'
);
select * from city where population = (
	select max(population) from city where countrycode = (
		select code from country where name = 'Brazil')
);

-- 13.	Exibir a cidade menos populosa (population) do Mundo.
select * from city where population = (
	select min(population) from city
);

-- 14.	Exibir as línguas faladas na Alemanha (Germany).
select * from countrylanguage where countrycode = 'DEU';
select * from countrylanguage where countrycode = (
	select code from country where name = 'Germany');

-- 15.	Exibir o total da população das cidades Brasileiras cadastradas.
select sum(population) from city where countrycode = 'BRA';
select sum(population) from city where countrycode = (
	select code from country where name = 'Brazil');

-- 16.	Exibir a média de população das cidades da Índia.
select avg(population) from city where countrycode = 'IND';
select avg(population) from city where countrycode = (
	select code from country where name = 'India');

-- 17.	Exibir a média de expectativa de vida do Mundo.
select avg(LifeExpectancy) from country;