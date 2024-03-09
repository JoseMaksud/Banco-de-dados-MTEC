INSERT INTO Types(Name) VALUES ('Normal');
INSERT INTO Types(Name) VALUES ('Planta');

INSERT INTO Types(Name) VALUES
('Fogo'),
('Água'),
('Elétrico'),
('Gelo'),
('Venenoso');

INSERT INTO Gender(Name) VALUES
('Masculino'),
('Feminino'),
('Ambos');

INSERT INTO Generation(Name, Midia) VALUES
('Gen 1', 'D'),
('Gen 2', 'D');

INSERT INTO Pokemons(Number, GenerationId, 
GenderId, Name, Height, Weight) VALUES
(1, 1, 3, 'Bulbasaur', 0.7, 6.9);

INSERT INTO PokemonTypes VALUES
(1, 2), (1, 7);

INSERT INTO Pokemons VALUES
(2, 1, 1, 3, 'Ivysaur', null, 1, 13, null),
(3, 2, 1, 3, 'Venusaur', null, 2, 100, null),
(4, null, 1, 3, 'Charmander', null, 0.6, 8.5, null),
(5, 4, 1, 3, 'Charmeleon', null, 1.1, 19, null),
(6, 5, 1, 3, 'Charizard', null, 1.7, 90.5, null);

INSERT INTO Types(Name) VALUES ('Voador');

INSERT INTO PokemonTypes VALUES
(2, 2), (2, 7),
(3, 2), (3, 7),
(4, 3),
(5, 3),
(6, 3), (6, 8);


-- ALTERAR UM REGISTRO
UPDATE Pokemons SET
	Description = 'Bulbasaur pode ser visto tirando uma soneca ao sol. A semente nas suas costas cresce cada vez mais à medida que absorve os raios solares',
    Image = '/img/001.png'
WHERE Number = 1;

UPDATE Pokemons SET
	GenerationId = 1
WHERE Number <= 151;

/*
	Aumentar o preço de bebidas em 10%
    UPDATE Produto SET
		ValorVenda = ValorVenda * 1.1
	WHERE CategoriaId = 5;
    
    UPDATE Funcionario SET
		Salario = Salario * 1.05
	WHERE Salario < 1000;
 */

-- Excluir Dados
DELETE FROM Pokemons; -- Apaga todos os pokemons da tabela
DELETE FROM Pokemons WHERE Number = 11; -- apaga apenas o pokemon de número 11
DELETE FROM Pokemons WHERE GenerationId = 9; -- apaga todos os pokemons da geração 9
DELETE FROM Pokemons WHERE Height > 2; -- apaga os pokemons com mais de 2 metros de altura