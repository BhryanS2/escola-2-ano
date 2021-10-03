/*
 1) Construção da Modelagem (DER);
 Baseando-se no funcionamento do processo, construir o Diagrama de Entidade e
 Relacionamento de maneira que este atenda às necessidades do usuário e que o mesmo permita
 a realização de consultas utilizando Junções e Agrupamentos
 */
drop database Locadora;

CREATE SCHEMA IF NOT EXISTS Locadora;

USE Locadora;

-- -----------------------------------------------------
-- Table Jogos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jogos (
    id INT NOT NULL primary key auto_increment,
    Nome VARCHAR(45) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    ValorPorDia DECIMAL(10, 2) NOT NULL,
    Estoque INT NULL,
    Segmento INT NOT NULL
);

-- -----------------------------------------------------
-- Table Segmento
-- -----------------------------------------------------
-- drop table Segmento;
CREATE TABLE IF NOT EXISTS Segmento (
    id INT NOT NULL auto_increment PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255) NOT NULL
);

-- -----------------------------------------------------
-- Table Segmento_has_Jogos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Segmento_has_Jogos (
    idSegmento INT NOT NULL,
    idJogos INT NOT NULL
);

-- -----------------------------------------------------
-- Table Endereco
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Endereco (
    id INT NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    NumeroCasa INT NOT NULL,
    Bairro VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    CEP varchar(255) NOT NULL,
    Complemento VARCHAR(255) NOT NULL,
    Estado VARCHAR(255) NOT NULL
);

-- -----------------------------------------------------
-- Table Telefones
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Telefones (
    id INT NOT NULL,
    Numero VARCHAR(45) NOT NULL
);

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
    id INT NOT NULL auto_increment primary key,
    Nome VARCHAR(255) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Endereco INT NOT NULL,
    Telefones INT NULL
);

-- -----------------------------------------------------
-- Table JogoAlugado
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS JogoAlugado (
    idJogos INT NOT NULL,
    idCliente INT NOT NULL
);

/*
 2) Construção do Modelo Físico (DDL) e realização da carga de dados (DML);
 Baseando-se na construção do DER, o aluno deverá construir as tabelas da modelagem (Modelo
 Físico) e fazer uma carga de dados (construindo assim o SCRIPT) de maneira que se possa fazer
 consultas em SQL de questões estratégicas para tomada de decisão;
 */
insert into
    Segmento
values (1, 'Ação', 'Jogos de Ação'),(
    2, 'Aventura', 'Jogos de Aventura'),(
    3, 'Corrida', 'Jogos de Corrida'),(
    4, 'Esportes', 'Jogos de Esportes'),(
    5, 'Luta', 'Jogos de Luta'),(
    6, 'MMO', 'Jogos de MMORPG'),(
    7, 'Plataforma', 'Jogos de Plataforma'),(
    8, 'RPG', 'Jogos de RPG'),(
    9, 'Simulador', 'Jogos de Simulador'),(
    10, 'Terror', 'Jogos de Terror'),(
    11, 'Tiro', 'Jogos de Tiro');

insert into
    Segmento_has_Jogos
values (3, 1),(
    1, 2),(
    1, 3),(
    1, 4),(
    1, 5),(
    1, 6),(
    7, 7),(
    1, 8),(
    1, 9),(
    1, 10),(
    4, 11),(
    1, 12),(
    1, 13),(
    1, 14),(
    1, 15),(
    1, 16),(
    7, 17),(
    5, 18),(
    5, 19),(
    5, 20),(
    5, 21),(
    5, 22);

insert into
    Jogos
values (1, 'NFS', 'Jogo de corrida', 150.00, 5, 1),(
    2, 'GTA', 'Jogo de ação', 200.00, 10, 1),(
    3, 'GTA 2', 'Jogo de ação', 250.00, 5, 1),(
    4, 'GTA 3', 'Jogo de ação', 300.00, 10, 1),(
    5, 'GTA 4', 'Jogo de ação', 350.00, 5, 1),(
    6, 'GTA 5', 'Jogo de ação', 400.00, 10, 1),(
    7, 'Super Mario','Jogo de plataforma',100.00,10,1),(
    8, 'God of War', 'Jogo de ação', 150.00, 5, 1),(
    9, 'GTA V', 'Jogo de ação', 200.00, 10, 1),(
    10, 'Call of Duty','Jogo de ação',250.00,5,1),(
    11, 'Fifa', 'Jogo de futebol', 100.00, 10, 1),(
    12, 'Gears of War','Jogo de ação',200.00,10,1),(
    13, 'Gears of War 2','Jogo de ação',250.00,5,1),(
    14, 'Gears of War 3','Jogo de ação',300.00,10,1),(
    15, 'Gears of War 4','Jogo de ação',350.00,5,1),(
    16, 'Gears of War 5','Jogo de ação',400.00,10,1),(
    17, 'Super Mario 2','Jogo de plataforma',100.00,10,1),(
    18, 'Mortal Kombat','Jogo de luta',300.00,10,1),(
    19, 'Mortal Kombat X','Jogo de luta',350.00,5,1),(
    20, 'Mortal Kombat 2','Jogo de luta',400.00,10,1),(
    21, 'Mortal Kombat 3','Jogo de luta',450.00,5,1),(
    22, 'Mortal Kombat 4','Jogo de luta',500.00,10,1);

insert into
    Cliente
values (1,"João", "000.000.000-00", "joão@gmail.com", 1, 1),(
    2,"Maria","111.111.111-11","maria@gmail.com",2,2),(
    3,"José","222.222.222-22","jose@gmail.com",3,3),(
    4,"Joana","333.333.333-33","Joana@gmail.com",4,4);

insert into
    Endereco
values (1,"João Pessoa",156,"Esmeralda","São Paulo","00000-000","teste","Sp"),(
    2,"6 de setembro",7,"Rua das Américas","São Paulo","00000-000","teste","Sp"),(
    3,"5 de abril",8,"Boa pessoa","Recife","00000-000","teste","PE"),(
    4,"5 de maio",9,"Rua das Américas","São Paulo","00000-000","teste","Sp");

insert into
    Telefones
values (1, "11-1111-1111"),(
    1, "22-2222-2222"),(
    2, "33-3333-3333"),(
    3, "44-4444-4444"),(
    4, "55-5555-5555");

insert into
    JogoAlugado
values (1, 1),(
    1, 2),(
    1, 3),(
    1, 4),(
    2, 1),(
    2, 2),(
    2, 3),(
    2, 4),(
    3, 1),(
    3, 2),(
    3, 3),(
    3, 4),(
    4, 1),(
    4, 2),(
    4, 3),(
    4, 4);

select count(*) from Cliente;
select count(*) from Endereco;
select count(*) from Jogos;
select count(*) from Segmento;
select count(*) from Segmento_has_Jogos;
select count(*) from Telefones;
select count(*) from JogoAlugado;