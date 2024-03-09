CREATE DATABASE CampeonatoCPS;

USE CampeonatoCPS;

CREATE TABLE City (
	Id 		SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
	Name 	VARCHAR(100) NOT NULL,
    State 	CHAR(2) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Sport (
	Id				TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
	Name 			VARCHAR(50) NOT NULL,
    Gender			CHAR(1) NOT NULL,
    IsIndividual	TINYINT(1) UNSIGNED NOT NULL,
    TeamSize		TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Etec (
	Number		SMALLINT UNSIGNED NOT NULL,
    Name		VARCHAR(100) NOT NULL,
    CityId  	SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(Number)
);

ALTER TABLE Etec ADD CONSTRAINT FK_Etec_City
 FOREIGN KEY (CityId) REFERENCES City(Id);

CREATE TABLE Team (
	Id				SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    EtecNumber		SMALLINT UNSIGNED NOT NULL,
    Name			VARCHAR(100) NOT NULL,
    SportId			TINYINT UNSIGNED NOT NULL,
    CreatedDate		DATETIME NOT NULL,
    PRIMARY KEY(Id)
);

ALTER TABLE Team ADD CONSTRAINT FK_Team_Number
 FOREIGN KEY (EtecNumber) REFERENCES Etec(Number);
 
 ALTER TABLE Team ADD CONSTRAINT FK_Team_Sport
 FOREIGN KEY (SportId) REFERENCES Sport(Id);

CREATE TABLE Student (
	Id			SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
    Name		VARCHAR(60) NOT NULL,
    BirthDate   Date NOT NULL,
    Gender		CHAR(1) NOT NULL,
    Email		VARCHAR(100) NOT NULL,
    Phone		VARCHAR(20) NOT NULL,
    TeamId		SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(Id)
);

ALTER TABLE Student ADD CONSTRAINT FK_Student_Team
 FOREIGN KEY (TeamId) REFERENCES Team(Id);

CREATE TABLE Game (
	Id				SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL,
	SportId			TINYINT UNSIGNED NOT NULL,
    GameDate		DATETIME NOT NULL,
    Team1Id			SMALLINT UNSIGNED NOT NULL,
    Team1Points		SMALLINT UNSIGNED NOT NULL,
    Team2Id			SMALLINT UNSIGNED,
    Team2Points		SMALLINT UNSIGNED,
    PRIMARY KEY(Id)
);

ALTER TABLE Game ADD CONSTRAINT FK_Game_Sport
 FOREIGN KEY (SportId) REFERENCES Sport(Id);
 
 ALTER TABLE Game ADD CONSTRAINT FK_Game_Team
 FOREIGN KEY (Team1Id) REFERENCES Team(Id);
 
  ALTER TABLE Game ADD CONSTRAINT FK_Game_Team2
 FOREIGN KEY (Team2Id) REFERENCES Team(Id);