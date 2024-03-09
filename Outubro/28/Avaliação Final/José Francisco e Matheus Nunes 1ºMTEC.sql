-- 1.	Exibir todos os campos dos municípios cadastrados
select * from municipio; 

-- 2.	Exibir os municípios que possuem em qualquer parte do nome bonita
select * from municipio where nomemunicipio like '%bonita%'; 

-- 3.	Exibir os estados da região com id 2
select * from estado where idregiao = 2;

-- 4.	Exibir as mesorregiões em ordem alfabética de nome
select * from mesoregiao order by nomemesoregiao;

-- 5.	Exibir os estados com id maior que 15
select * from estado where idestado > 15;

-- 6.	Exibir os estados com id entre 20 e 30
select * from estado where idestado >= 20 and idestado <= 30; 

-- 7.	Exibir os estados com id 11, 12, 21, 31, 41, 42, 47
select * from estado where idestado = 11 or idestado = 12 or idestado = 21 or idestado = 31 or idestado = 41 or idestado = 42 or idestado = 47;

-- 8.	Exibir a quantidade de estados cadastrados
select count(*) as "Quantidade de estados: " from estado;

-- 9.	Exibir o maior valor do campo id da tabela de municípios
select max(idmunicipio) as "Maior valor: " from municipio;

-- 10.	Exibir o menor valor do campo id da tabela de municípios
select min(idmunicipio) as "Menor valor: " from municipio;

-- 11.	Exibir e calcular o somatório dos ids dos estados cadastrados
select 
	sum(idestado) as "Soma ids estado:"
from estado;

-- 12.	Exibir e calcular a média dos ids dos estados cadastrados
select 
	avg(idestado) as "Médias ids estado:"
from estado;

-- 13.	Exibir os estados da região norte
select * from estado where idregiao = 1;

-- 14.	Exibir os estados das regiões sul e sudeste
select * from estado where idregiao = 3 or idregiao = 4;

-- 15.	Exibir o nome da região e o nome de seus estados e siglas
select
		regiao.nomeregiao as "Nome região",
        estado.nomeestado as "Nome estado",
        estado.uf as "Siglas"
	from regiao inner join estado on regiao.idregiao = estado.idregiao;
    
-- 16.	Exibir os municípios do estado de São Paulo
select
		municipio.*,
        microregiao.idmicroregiao,
        mesoregiao.idmesoregiao,
        estado.*
        from municipio 
        inner join microregiao on municipio.idmicroregiao = microregiao.idmicroregiao 
        inner join mesoregiao on microregiao.idmesoregiao = mesoregiao.idmesoregiao
        inner join estado on mesoregiao.idestado = estado.idestado 
        where estado.nomeestado like "%São Paulo%"
        order by municipio.nomemunicipio;
