-- ------------------------------------
-- Comandos DDL
-- ------------------------------------
CREATE DATABASE IF NOT EXISTS `Kitchen`;
USE Kitchen;

CREATE TABLE IF NOT EXISTS Ingredients (
    id_Ingredients INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    UnidadeDeMedida varchar(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cozinheiro (
    idCozinheiro INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
	PRIMARY KEY (idCozinheiro)
);

CREATE TABLE IF NOT EXISTS Prato (
    idPrato INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(15),
    valor DECIMAL(3 , 2 ) NOT NULL,
    FKCozinheiro int NOT NULL,
    CONSTRAINT `fk_cozinheiro` FOREIGN KEY (`FKCozinheiro`)
        REFERENCES `Cozinheiro` (`idCozinheiro`)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Receita (
    Qtd INT NOT NULL,
    FKIngredientes INT NOT NULL,
    FKPrato INT NOT NULL,
    CONSTRAINT fk_ingredientes FOREIGN KEY (FKIngredientes)
        REFERENCES Ingredients (id_Ingredients)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_prato FOREIGN KEY (FKPrato)
        REFERENCES Prato (idPrato)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------
-- Comandos DML
-- ------------------------------------

DESCRIBE Receita;
DESCRIBE Prato;
DESCRIBE Cozinheiro;
DESCRIBE Ingredients;
insert into  Ingredients (id_Ingredients, Nome, UnidadeDeMedida) 
values (default, "leite", "Litros");

SELECT * FROM Ingredients;
SELECT * FROM Ingredients ORDER BY id_Ingredients;
SELECT * FROM Ingredients WHERE id_Ingredients = 1;
    
insert into  Cozinheiro  (idCozinheiro,Nome)
values (default, "Maria");
SELECT * FROM Cozinheiro ORDER BY idCozinheiro;
insert into  Prato (idPrato, Nome, valor, FKCozinheiro)
values (default, "Ovo cozido", "2",  1);

SELECT Prato.idPrato, Prato.Nome, Prato.valor, Prato.FKCozinheiro
FROM Prato INNER JOIN Cozinheiro ON Prato.FKCozinheiro = Cozinheiro.idCozinheiro;

insert into  Receita (Qtd, Fkingredientes, FkPrato) 
values ("1", 1, 1);


-- DROP DATABASE Kitchen;