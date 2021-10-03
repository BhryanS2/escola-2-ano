create database padariadois;
use padariadois;

-- drop database padariadois;

create table Ingredientes (
  idIngredientes integer not null,
  Nome VARCHAR(40) null,
  QtdeEstoque DECIMAL(8,2) null,
  PRIMARY KEY(idIngredientes)
);

create table Cozinheiro (
  idCozinheiro integer not null,
  Nome VARCHAR(40) null,
  Sexo CHAR(1) null,
  Salario DECIMAL(8,2) null,
  Filhos INT,
  PRIMARY KEY(idCozinheiro)
);

create table Prato (
  idPrato integer not null,
  idCozinheiro integer not null,
  Nome VARCHAR(40) null,
  Preco DECIMAL(8,2) null,
  PRIMARY KEY(idPrato),
  INDEX Prato_FKIndex1(idCozinheiro),
  FOREIGN KEY(idCozinheiro)
    REFERENCES Cozinheiro(idCozinheiro)
      on DELETE NO ACTIon
      on UPDATE NO ACTIon
);

select * from Cozinheiro;
-- DELETE from Cozinheiro where idCozinheiro = 1;
-- DELETE from Prato where idPrato = 1;
-- DELETE from Receita where idIngredientes = 3;
-- DELETE from Ingredientes where idIngredientes = 3; 

create table Receita (
  idPrato integer not null,
  idIngredientes integer not null,
  PRIMARY KEY(idPrato, idIngredientes),
  INDEX Receita_FKIndex1(idPrato),
  INDEX Receita_FKIndex2(idIngredientes),
  FOREIGN KEY(idPrato)
    REFERENCES Prato(idPrato)
      on DELETE cascade
      on UPDATE NO ACTIon,
  FOREIGN KEY(idIngredientes)
    REFERENCES Ingredientes(idIngredientes)
      on DELETE NO ACTIon
      on UPDATE NO ACTIon
);

--

describe Cozinheiro;
insert into Cozinheiro values (1,'Joao','M',1500.00,1);
insert into Cozinheiro values (2,'Jose','M',1600.00,2);
insert into Cozinheiro values (3,'Ana','F',900.00,2);
insert into Cozinheiro values (4,'Ricardo','M',1800.00,2);
insert into Cozinheiro values (5,'Alberto','M',17000.00,3);
select * from Cozinheiro;
insert into Cozinheiro VALUES (6,'Joao Marcelo','M',17000.00,1);

describe Ingredientes;
insert into Ingredientes values (1,'Ovo',500);
insert into Ingredientes values (2,'Farinha',1500);
insert into Ingredientes values (3,'Leite',2500);
insert into Ingredientes values (4,'Sal',300);
insert into Ingredientes values (5,'Coco',600);
insert into Ingredientes values (6,'Carne Moida',1000);
insert into Ingredientes values (7,'Cebolinha',300);
insert into Ingredientes values (8,'Cereja',450);
insert into Ingredientes values (9,'Salsinha',600);
insert into Ingredientes values (10,'Creme de Leite',200);
insert into Ingredientes values (11,'Leite Condensado',660);
insert into Ingredientes values (12,'Farinha de rosca',300);
insert into Ingredientes values (13,'Leite em pó',630);
insert into Ingredientes values (14,'Chocolate',100);
insert into Ingredientes values (15,'Doce de leite',350);
insert into Ingredientes values (16,'Açucar',20);
insert into Ingredientes values (17,'Cebola',600);
select * from Ingredientes;

describe Prato;
insert into Prato values (1,1,'Quindim',5.00);
insert into Prato values (2,1,'Coxinha',3.00);
insert into Prato values (3,2,'Risoles',3.00);
insert into Prato values (4,4,'Kibe',3.00);
insert into Prato values (5,3,'Hamburguer',3.00);
insert into Prato values (6,5,'Bolo',4.00);
insert into Prato values (7,5,'Pão',0.30);
insert into Prato values (8,2,'Rosca',2.00);
insert into Prato values (9,4,'Pão de queijo',1.00);
insert into Prato values (10,3,'Lasanha',10.00);
insert into Prato values (11,3,'Nhoque',12.00);
insert into Prato values (12,2,'Pudim',8.00);
select * from Prato;

describe Receita;
insert into Receita values (1,1);
insert into Receita values (1,3);
insert into Receita values (1,4);
insert into Receita values (1,5);
insert into Receita values (2,3);
insert into Receita values (2,6);
insert into Receita values (2,9);
insert into Receita values (2,12);
insert into Receita values (3,2);
insert into Receita values (3,5);
insert into Receita values (3,7);
insert into Receita values (3,13);
insert into Receita values (4,14);
insert into Receita values (4,13);
insert into Receita values (4,2);
insert into Receita values (4,1);
insert into Receita values (5,3);
insert into Receita values (5,4);
insert into Receita values (5,16);
insert into Receita values (5,14);
insert into Receita values (6,9);
insert into Receita values (6,7);
insert into Receita values (6,4);
insert into Receita values (6,5);
insert into Receita values (7,3);
insert into Receita values (7,2);
insert into Receita values (7,11);
insert into Receita values (7,14);
insert into Receita values (8,15);
insert into Receita values (8,13);
insert into Receita values (8,3);
insert into Receita values (8,11);
insert into Receita values (9,4);
insert into Receita values (9,7);
insert into Receita values (9,14);
insert into Receita values (9,8);
insert into Receita values (10,9);
insert into Receita values (10,15);
insert into Receita values (10,11);
insert into Receita values (10,3);
insert into Receita values (11,2);
insert into Receita values (11,4);
insert into Receita values (11,12);
insert into Receita values (11,16);
insert into Receita values (12,2);
insert into Receita values (12,5);
insert into Receita values (12,7);
insert into Receita values (12,9);
select * from Receita;

--
-- Operadores e Funções
select * from Cozinheiro;
select NOME, SALARIO from Cozinheiro where salario >= 1000;
select nome, salario, salario - 100 from Cozinheiro where salario >= 1000;
select * from Cozinheiro where (salario > 1000) AND (filhos > 1); -- (cond1) (cond2) AMBAS V
select * from Cozinheiro where (salario > 1000) OR (filhos > 1); -- (cond1) (cond2) QUALQUER V


select * from Cozinheiro;
-- MIN(),MAX(),AVG(),SUM(),COUNT()
select MIN(salario) from Cozinheiro;
select MAX(salario) from Cozinheiro;
select AVG(salario) from Cozinheiro;
select ROUND(AVG(salario),1) from Cozinheiro;
select SUM(SALARIO) from Cozinheiro;
select SUM(FILHOS) from Cozinheiro;
select COUNT(FILHOS) from Cozinheiro;
INSERT into Cozinheiro (IDCozinheiro,NOME,SEXO,SALARIO) VALUES (7,'AAA','M',1000);
select COUNT(FILHOS) from Cozinheiro where SEXO = 'f';
select COUNT(*) from Cozinheiro;

-- Junções
-- Coz - Pra - Rec - Ing 
-- Qual o valor médio do salario dos Cozinheiros?
select AVG(salario) from Cozinheiro;
-- Qual o preco medio dos Pratos do restaurante?
select * from Prato;
select AVG(preco) from Prato;
-- Qual o ingrediente (Apenas QTDE) que mais tem quantidade no restaurante?
select * from Ingredientes;
select MAX(qtdeestoque) from Ingredientes;

-- Qual Cozinheiro faz bolo?
-- select * from Prato;
select * from Prato where nome = 'bolo';	-- (codigo 5 do Cozinheiro)
select * from Cozinheiro where idCozinheiro = 5;


-- select * from Cozinheiro;
-- select * from Prato;
select Prato.Nome, Cozinheiro.Nome
from Prato
inner join Cozinheiro on Prato.idCozinheiro = Cozinheiro.idCozinheiro
where Prato.Nome = 'bolo';


-- Quais Pratos utilizam ovo?
-- Coz - Pra - Rec - Ing 
select Prato.Nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.Nome = 'ovo';

-- select * from Ingredientes;
-- select * from Receita;
-- select * from Prato;

-- PARA ConSULTAS...

-- Quais Pratos utilizam farinha?
select Prato.Nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.Nome = 'farinha';


-- Qual Cozinheiro faz quindim?
select * from Cozinheiro;
select * from Prato;

select idCozinheiro from Prato where nome = 'quindim';	-- (1)
select nome from Cozinheiro where idCozinheiro = 1;

select Cozinheiro.nome 
from Cozinheiro
inner join Prato on Prato.idCozinheiro = Cozinheiro.idCozinheiro
where Prato.nome = 'quindim';



-- Qual Cozinheiro faz pudim?
select idCozinheiro from Prato where nome = 'pudim';		-- (2)
select nome from Cozinheiro where idCozinheiro = 2;

select Cozinheiro.nome, Prato.nome
from Cozinheiro
inner join Prato on Cozinheiro.idCozinheiro = Prato.idCozinheiro
where Prato.Nome = 'pudim';

-- -------------------------------------
-- Quais Pratos utilizam farinha?
-- Prato x Receita x Ingredientes

select Prato.Nome, Ingredientes.Nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.nome = 'farinha';


-- Quais Cozinheiros utilizam ovos?
select Cozinheiro.nome, Prato.nome, Ingredientes.Nome
from Cozinheiro
inner join Prato on Cozinheiro.idCozinheiro = Prato.idCozinheiro
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.nome = 'ovo';

-- Quais Pratos utilizam ovos?
select Prato.nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.nome = 'ovo';

-- Quais Ingredientes vao no nhoque?
select Prato.nome, Ingredientes.nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Prato.nome = 'nhoque';

-- Questões
-- 1) Quais ingredientes são utilizados para fazer “quindim”?

select Ingredientes.nome
from Prato
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Prato.nome = 'quindim';

-- 2) Qual/Quais cozinheiro/s fazem “coxinha”, “risoles” e “quibe”?

select Cozinheiro.nome, Prato.nome
from Cozinheiro
inner join Prato on Prato.idPrato = Cozinheiro.idCozinheiro
where Prato.nome = 'coxinha'or Prato.nome = 'risoles' or  Prato.nome = 'kibe';

-- 3) Qual/Quais cozinheiro/s utilizam “leite” em suas receitas?
select Cozinheiro.nome, Prato.nome
from Cozinheiro
inner join Prato on Prato.idPrato = Cozinheiro.idCozinheiro
inner join Receita on Receita.idPrato = Prato.idPrato
inner join Ingredientes on Ingredientes.idIngredientes = Receita.idIngredientes
where Ingredientes.nome = "leite";