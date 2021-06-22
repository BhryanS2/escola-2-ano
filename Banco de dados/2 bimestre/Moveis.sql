-- ------------------------------------
-- Comandos DDL
-- ------------------------------------

CREATE DATABASE IF NOT EXISTS `Moveis` ;
USE `Moveis` ;


CREATE TABLE IF NOT EXISTS `Produto` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Venda` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `idProduto` INT NOT NULL,
    `valor` DECIMAL(5, 2) NOT NULL,
    `qtd` INT NOT NULL,
    CONSTRAINT `id_Produto` FOREIGN KEY (`idProduto`)
        REFERENCES `Produto` (`id`)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `MateriaPrima` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(100) NOT NULL,
    `Valor` DECIMAL(5, 2) NOT NULL,
    `qtd` DECIMAL(5, 2) NOT NULL,
    `unidade_de_medida` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `Venda_Has_Mp` (
    `idVenda` INT NOT NULL,
    `idMateriaPrima` INT NOT NULL,
    `qtd` DECIMAL(5, 2) NOT NULL,

    CONSTRAINT `id_Venda` FOREIGN KEY (`idVenda`)
        REFERENCES `Venda` (`id`)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    
    CONSTRAINT `id_MateriaPrima` FOREIGN KEY (`idMateriaPrima`)
        REFERENCES `MateriaPrima` (`id`)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


SHOW TABLES;

-- ------------------------------------
-- Comandos DML
-- ------------------------------------



INSERT INTO `Produto` ( id, Nome )
VALUES 
(default, 'Mesa'),
(default, 'Cadeira');

Select * from Produto;

INSERT INTO `Venda` ( id, idProduto, valor, qtd ) 
VALUES
(default, 1, '20', '1'),
(default, 2, '20', '2');


INSERT INTO `MateriaPrima` ( id, Nome, Valor, qtd, unidade_de_medida)
VALUES 
(default, 'Prego', '10', '2', 'Quantidade'),
(default, 'Madeira', '20', '50', 'Metros');


INSERT INTO `Venda_Has_Mp` ( idVenda, idMateriaPrima, qtd )
VALUES 
(1, 1, '200'),
(2, 2, '20');
 
SELECT * FROM MateriaPrima ORDER BY -Valor;
-- drop database Moveis