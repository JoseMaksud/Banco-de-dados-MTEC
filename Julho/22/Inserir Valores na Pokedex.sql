INSERT INTO Types(Name) VALUES ('Normal');
INSERT INTO Types(Name) VALUES ('Planta');

INSERT INTO Types(Name) VALUES
 ('Fogo'),
 ('Água'),
 ('Elétrico'),
 ('Gelo'),
 ('Veneno');
 
INSERT INTO Gender(Name) VALUES 
 ('Masculino'),
 ('Feminino'),
 ('Ambos');

INSERT INTO Generation(Name,Midia) VALUES
 ('Gen 1' , 'D'),
 ('Gen 2' , 'D');
 
INSERT INTO Pokemons(Number, GenerationId, GenderId,
Name, Height, Weight) VALUES
(1, 1, 3, 'Bulbassaur', 0.7, 6.9);