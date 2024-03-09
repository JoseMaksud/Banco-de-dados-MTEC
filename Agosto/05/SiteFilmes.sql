CREATE DATABASE SiteFilmes;
USE SiteFilmes;

CREATE TABLE Genero (
	idGenero 	INT  NOT NULL AUTO_INCREMENT,
    nomeGenero 	VARCHAR(50) NOT NULL,
    PRIMARY KEY(idGenero)
);

CREATE TABLE TipoAtuacao (
	idTipoAtuacao 		INT NOT NULL,
    nomeTipoAtuacao 	VARCHAR(50) NOT NULL,
    PRIMARY KEY(idTipoAtuacao)
);

CREATE TABLE Filme (
	idFilme			INT,
    nomeFilme		VARCHAR(200) NOT NULL,
    sinopse			VARCHAR(8000) NOT NULL,
    duracao			INT NOT NULL,
    anoEstreia		DATE,
    PRIMARY KEY(idFilme)
);

CREATE TABLE Pais (
	idPais 		INT NOT NULL,
    nomePais 	VARCHAR(50) NOT NULL,
    PRIMARY KEY(idPais)
);

CREATE TABLE Pessoa (
	idPessoa 		INT NOT NULL,
    idPais	 		INT ,
    nomePessoa		VARCHAR(60) NOT NULL,
    PRIMARY KEY(idPessoa)
);

ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_Pais
 FOREIGN KEY (idPais) REFERENCES Pais(idPais);

CREATE TABLE GeneroFilme (
	idFilme 	INT NOT NULL,
    idGenero 	INT NOT NULL,
    PRIMARY KEY(idFilme, idGenero)
);

ALTER TABLE GeneroFilme ADD CONSTRAINT FK_GeneroFilme_Filme
 FOREIGN KEY (idFilme) REFERENCES Filme(idFilme);
 
ALTER TABLE GeneroFilme ADD CONSTRAINT FK_GeneroFilme_Genero
 FOREIGN KEY (idGenero) REFERENCES Genero(idGenero);


CREATE TABLE Equipe (
	idPessoa 		INT NOT NULL,
    idFilme 		INT NOT NULL,
    idTipoAtuacao	INT NOT NULL,
    PRIMARY KEY(idPessoa, idFilme, idTipoAtuacao)
);

ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_Pessoa
 FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa);
 
ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_Filme
 FOREIGN KEY (idFilme) REFERENCES Filme(idFilme);
 
ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_TipoAtuacao
 FOREIGN KEY (idTipoAtuacao) REFERENCES TipoAtuacao(idTipoAtuacao);

CREATE TABLE PaisFilme (
    idFilme 		INT NOT NULL,
    idPais			INT NOT NULL,
    PRIMARY KEY(idFilme, idPais)
);

ALTER TABLE PaisFilme ADD CONSTRAINT FK_PaisFilme_Filme
 FOREIGN KEY (idFilme) REFERENCES Filme(idFilme);

ALTER TABLE PaisFilme ADD CONSTRAINT FK_PaisFilme_Pais
 FOREIGN KEY (idPais) REFERENCES Pais(idPais);

