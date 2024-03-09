CREATE DATABASE Pokedex;

USE Pokedex;

CREATE TABLE Types(
	Id		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(Id)
);

CREATE TABLE Abilities(
	Id		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(Id)
);

CREATE TABLE Gender(
	Id		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(15) NOT NULL UNIQUE,
    PRIMARY KEY(Id)
);

CREATE TABLE Generation(
	Id		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name	VARCHAR(20) NOT NULL UNIQUE,
    Midia	CHAR(1) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Pokemons(
	Number		 INT UNSIGNED NOT NULL,
    GenerationId INT UNSIGNED NOT NULL,
    GenderId	 INT UNSIGNED NOT NULL,
    EvolvedFrom	 INT UNSIGNED,
    Name		 VARCHAR(30) NOT NULL UNIQUE,
    Description  VARCHAR(1000),
    Height		 DECIMAL(5,2) UNSIGNED NOT NULL DEFAULT 0,  -- 999,99
    Weight		 DECIMAL(7,3) UNSIGNED NOT NULL DEFAULT 0,   -- 9999,999
    Image		 VARCHAR(200),
    PRIMARY KEY(Number)
);

ALTER TABLE Pokemons ADD CONSTRAINT FK_Pokemons_Generation
 FOREIGN KEY (GenerationId) REFERENCES Generation(Id);

ALTER TABLE Pokemons ADD CONSTRAINT FK_Pokemons_Gender
 FOREIGN KEY (GenderId) REFERENCES Gender(Id);
 
ALTER TABLE Pokemons ADD CONSTRAINT FK_Pokemons_Pokemons
 FOREIGN KEY (EvolvedFrom) REFERENCES Pokemons(Number);
 

CREATE TABLE PokemonTypes (
	PokemonNumber	INT UNSIGNED NOT NULL,
    TypeId			INT UNSIGNED NOT NULL,
    PRIMARY KEY (PokemonNumber, TypeId)
);

ALTER TABLE PokemonTypes ADD CONSTRAINT FK_PokemonTypes_Pokemon
 FOREIGN KEY (PokemonNumber) REFERENCES Pokemons(Number);
 
ALTER TABLE PokemonTypes ADD CONSTRAINT FK_PokemonTypes_Type
 FOREIGN KEY (TypeId) REFERENCES Types(Id);

CREATE TABLE Weakness (
	PokemonNumber	INT UNSIGNED NOT NULL,
    TypeId			INT UNSIGNED NOT NULL,
    PRIMARY KEY (PokemonNumber, TypeId)
);

ALTER TABLE Weakness ADD CONSTRAINT FK_Weakness_Pokemon
 FOREIGN KEY (PokemonNumber) REFERENCES Pokemons(Number);
 
ALTER TABLE Weakness ADD CONSTRAINT FK_Weakness_Type
 FOREIGN KEY (TypeId) REFERENCES Types(Id);

CREATE TABLE PokemonAbilities (
	PokemonNumber	INT UNSIGNED NOT NULL,
    AbilityId			INT UNSIGNED NOT NULL,
    PRIMARY KEY (PokemonNumber, AbilityId)
);

ALTER TABLE PokemonAbilities ADD CONSTRAINT FK_PokemonAblities_Pokemon
 FOREIGN KEY (PokemonNumber) REFERENCES Pokemons(Number);
 
ALTER TABLE PokemonAbilities ADD CONSTRAINT FK_PokemonAbilities_Ability
 FOREIGN KEY (AbilityId) REFERENCES Abilities(Id);