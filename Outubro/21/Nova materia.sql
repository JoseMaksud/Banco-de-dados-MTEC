-- Pesquisas com Relacionamento entre tabelas
select
		city.*,
        country.Name as 'Country'
	from city, country
where city.CountryCode = country.code;

-- JOIN (permite juntar tabela sem o uso do WHERE)
select
		c.*,
        p.Name as 'Country'
	from city c inner join country p
     on c.CountryCode = p.code;
     
select
		l.*,
        p.Name as 'Country'
	from countrylanguage l inner join country p
     on l.CountryCode = p.code;