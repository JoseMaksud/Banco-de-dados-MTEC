-- DDL - Linguagem de Definição de Dados - Data Definition Language

CREATE DATABASE IF NOT EXISTS GalloMovies;

USE GalloMovies;

CREATE TABLE IF NOT EXISTS Genre
(
	Id			TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	Name		VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(Id)
);

CREATE TABLE IF NOT EXISTS Country
(
	Id			TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	Name		VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(Id)
);

CREATE TABLE IF NOT EXISTS Movie
(
	Id				INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name			VARCHAR(100) NOT NULL,
    BrazillianName	VARCHAR(100) NOT NULL,
    Synopsis		TEXT, 
    MovieYear		YEAR,
    Duration		
);