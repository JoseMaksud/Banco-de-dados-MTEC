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
	Id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL,
    PRIMARY KEY(Id)
);

    
-- Criar Tabela - Marca - Brand
CREATE TABLE IF NOT EXISTS Brand (
	Id	 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL,
	PRIMARY KEY(Id)
);

-- Criar Tabela - Produto - Product
CREATE TABLE IF NOT EXISTS Product (
	Id 	 		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name		VARCHAR(70) NOT NULL,
    Description VARCHAR(8000),
    Storage		INT UNSIGNED NOT NULL DEFAULT 0,
    StorageMin	INT UNSIGNED NOT NULL DEFAULT 0,
    Cost		DECIMAL(10,2) NOT NULL DEFAULT 0,
    Price		DECIMAL(10,2) NOT NULL DEFAULT 0,
    CreatedDate DATETIME,
    Image		VARCHAR(200),
    CategoryId	SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (Id)
);

-- Alterar a Tabela Produto adicionando o campo BrandId
ALTER TABLE Product ADD BrandId SMALLINT UNSIGNED NOT NULL;

-- Alterar Tabela Produto adicionando as chaves estrangeiras
ALTER TABLE Product ADD CONSTRAINT FK_Product_Category
 FOREIGN KEY (CategoryId) REFERENCES Category(Id);
 
ALTER TABLE Product ADD CONSTRAINT FK_Product_Brand
 FOREIGN KEY (BrandId) REFERENCES Brand(Id);

-- Excluir Tabelas
-- DROP TABLE Product;


