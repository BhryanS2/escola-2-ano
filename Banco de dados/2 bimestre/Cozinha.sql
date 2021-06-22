CREATE DATABASE Kitchen;
USE Kitchen;

CREATE TABLE Ingredients (
    id_Ingredients INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    UnidadeDeMedida FLOAT
);

CREATE TABLE Receita (
    idReceita INTEGER NOT NULL,
    Prato INT NOT NULL,
    Qtd INT NOT NULL
);

CREATE TABLE Prato (
    idPrato INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(15),
    valor DECIMAL(3, 2 ) NOT NULL,
    FKCozinheiro INT NOT NULL
);

CREATE TABLE Cozinheiro (
    idCozinheiro INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL
);

ALTER TABLE Prato 
	ADD FOREIGN KEY (FKCozinheiro) 
	REFERENCES Cozinheiro (idCozinheiro);

ALTER TABLE Receita 
	ADD FOREIGN KEY (Prato) 
	REFERENCES Prato (idPrato);

ALTER TABLE Receita 
	ADD FOREIGN KEY (idReceita) 
	REFERENCES Ingredients(id_Ingredients);

DROP TABLE Receita;
DROP TABLE Prato;
DROP TABLE Cozinheiro;
DROP TABLE Ingredients;

DESCRIBE Receita;
DESCRIBE Prato;
DESCRIBE Cozinheiro;
DESCRIBE Ingredients;

insert into Receita values (Nome, `Bhryan`);
insert into Prato values (Nome, `Bhryan`);
insert into Cozinheiro values (Nome, `Bhryan`);
insert into Ingredients values (Nome, `Bhryan`);

insert into  Ingredients (id_Ingredients,Nome,UnidadeDeMedida) 
values ("1", "Ovo", "Númerica");

insert into  Receita values (
    idReceita,
    Prato,
    Qtd
);

insert into  Prato values (
    idPrato,
    Nome,
    valor,
    FKCozinheiro
);

insert into  Cozinheiro values (
    idCozinheiro,
    Nome
);