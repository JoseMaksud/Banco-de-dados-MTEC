-- Criar o Banco de Dados
CREATE DATABASE IF NOT EXISTS GalloShop;

-- Exibe os Bancos de Dados do Servidor
-- SHOW DATABASES;

-- Colocar o Banco de Dados em USO
USE GalloShop;

-- Excluir um Banco de Dados
-- DROP DATABASE IF EXISTS GalloShop;

-- Criar Tabela
CREATE TABLE IF NOT EXISTS Category 
(
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL
);

-- Alterar Tabela
ALTER TABLE Category ADD CONSTRAINT PK_Category PRIMARY KEY(Id);

-- Cria Tabela - Marca - Brand
CREATE TABLE IF NOT EXISTS Brand (
	Id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(30) NOT NULL,
    CONSTRAINT PK_Brand PRIMARY KEY(Id)
);

-- Cria Tabela - Produto - Product
CREATE TABLE IF NOT EXISTS Product (
	Id      	INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    Name    	VARCHAR(70) NOT NULL, 
    Description VARCHAR(8000),
    Storage  	INT UNSIGNED NOT NULL DEFAULT 0, 
    StorageMin  INT UNSIGNED NOT NULL DEFAULT 0,
    Cost		DECIMAL(10,2) NOT NULL, 
    Price		DECIMAL(10,2) NOT NULL, 
    CategoryId SMALLINT UNSIGNED NOT NULL,
); 