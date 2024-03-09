-- Comandos DQL - Data Query Language
-- SELECT
-- SINTAXE: 
-- SELECT <COLUNAS QUE VOCÊ QUER EXIBIR AO USUÁRIO> FROM <NOME TABELA>
-- Exibir todos os Tipos de de pokemons existentes
SELECT id, Name, Color FROM Types; 
SELECT * FROM Types; 

-- Filtrar os dados - WHERE
SELECT * FROM Types WHERE Id = 7;
SELECT * FROM Types WHERE Id < 7;
SELECT * FROM Types WHERE Id > 7;
SELECT * FROM Types WHERE Id <> 7; -- !=

-- Filtrar os dados = WHERE campo texto -> USAR O LIKE
SELECT * FROM Types WHERE Name = 'Fada';
SELECT * FROM Types WHERE Name = 'Elétrico';

-- % ao Final de um texto, pesquisar todos os valores daquele campo quem comecem com o texto informado
SELECT * FROM Types WHERE Name LIKE 'F%';

-- % no ínicio de um texto
SELECT * FROM Types WHERE Name LIKE '%o';

-- % no meio de um texto
SELECT * FROM TYPES WHERE Name LIKE '%da%'; 

-- Exibir todos os dados dos pokemons com altura maior que 1,5 mt
SELECT * FROM Pokemons WHERE Height >= 1.5;

-- Exibir todos os campos dos pokemons ordenados por Número
-- ORDER BY Campo <ASC, DESC>, ordem crescente é o padrão 
SELECT * FROM Pokemons ORDER BY Number; 

-- Exibir todos os campos dos pokemons ordenado por peso, do mais pesado para o mais leve
SELECT * FROM Pokemons ORDER BY Weight DESC; 

-- Filtrando por Gênero
-- Exibir pokemons que podem ser encontrados por ambos os gêneros 
-- GenderId 3 -> Masculino e Feminino 
SELECT * FROM Pokemons WHERE GenderId = 3; 

-- GenderId 1 -> Masculino
SELECT * FROM Pokemons WHERE GenderId = 1 OR GenderId = 3; 

-- GenderId 2 -> Feminino 
SELECT * FROM Pokemons WHERE GenderId = 2 OR GenderId = 3; 

 