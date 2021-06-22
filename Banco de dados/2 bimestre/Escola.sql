-- ------------------------------------
-- Comandos DDL
-- ------------------------------------

CREATE DATABASE IF NOT EXISTS `escola` ;
USE `escola` ;


CREATE TABLE IF NOT EXISTS `Aluno` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(255) NOT NULL,
    `Data_de_nascimento` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Professor` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(255) NOT NULL,
    `Data_de_nascimento` DATETIME NULL,
    PRIMARY KEY (`id`)
);



CREATE TABLE IF NOT EXISTS `Disciplinas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(45) NOT NULL,
    `FkProfessor` INT NOT NULL,
    CONSTRAINT `Fk_Professor` FOREIGN KEY (`FkProfessor`)
        REFERENCES `Professor` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Curso` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(45) NULL,
    `FkDisciplina` INT NOT NULL,
    CONSTRAINT `Fk_Disciplina` FOREIGN KEY (`FkDisciplina`)
        REFERENCES `Disciplinas` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (`id`)
);



CREATE TABLE IF NOT EXISTS `Matricula` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `idAluno` INT NULL,
    `idCurso` INT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Aluno` 
		FOREIGN KEY (`idAluno`)
        REFERENCES `Aluno` (`id`)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    CONSTRAINT `fk_Curso` 
		FOREIGN KEY (`idCurso`)
        REFERENCES `Curso` (`id`)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


ALTER TABLE Aluno
MODIFY COLUMN Data_de_nascimento DATE;

ALTER TABLE Professor
MODIFY COLUMN Data_de_nascimento DATE;

SHOW TABLES;

-- ------------------------------------
-- Comandos DML
-- ------------------------------------



INSERT INTO `Aluno`(id, Nome, Data_de_nascimento)
VALUES 
(default, 'Bhryan Stepenhen', '2004-11-03'),
(default, 'Joao Santos', '2003-05-11'),
(default, 'Carlos Caruzo', '2005-06-21');


SELECT * FROM Aluno;
SELECT * FROM Aluno ORDER BY id;
SELECT * FROM Aluno ORDER BY Nome;
SELECT * FROM Aluno WHERE id = 1;



INSERT INTO `Professor`(id, Nome, Data_de_nascimento)
VALUES 
(default, 'Leandro', '1985-06-21'),
(default, 'Joao', '1980-05-15');


INSERT INTO `Disciplinas`(id, Nome, FkProfessor)
VALUES 
(default, 'Matematica', 1),
(default, 'Banco de Dados',  2);

INSERT INTO `Curso`(id, Nome, FkDisciplina )
VALUES 
(default, 'Agronomia', 1),
(default, 'Tecnico em informática', 2);


INSERT INTO `Matricula` (id,idAluno,idCurso)
VALUES 
(default, 1, 1),
(default, 2, 1);
 
-- drop database escola
