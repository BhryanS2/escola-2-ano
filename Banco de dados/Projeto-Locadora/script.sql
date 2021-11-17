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
values (1, "Ação", "Jogos de Ação"),(
    2, "Aventura", "Jogos de Aventura"),(
    3, "Corrida", "Jogos de Corrida"),(
    4, "Esportes", "Jogos de Esportes"),(
    5, "Luta", "Jogos de Luta"),(
    6, "MMO", "Jogos de MMORPG"),(
    7, "Plataforma", "Jogos de Plataforma"),(
    8, "RPG", "Jogos de RPG"),(
    9, "Simulador", "Jogos de Simulador"),(
    10, "Terror", "Jogos de Terror"),(
    11, "Tiro", "Jogos de Tiro");

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
    5, 22),(
    5, 23),(
    7, 24);


insert into
    Jogos
values (
    1, "NFS",                   "Jogo de corrida",      150.00,     5,      3),     (
    2, "GTA",                   "Jogo de ação",         200.00,     10,     1),     (
    3, "GTA 2",                 "Jogo de ação",         250.00,     5,      1),     (
    4, "GTA 3",                 "Jogo de ação",         300.00,     10,     1),     (
    5, "GTA 4",                 "Jogo de ação",         350.00,     5,      1),     (
    6, "GTA 5",                 "Jogo de ação",         400.00,     10,     7),     (
    7, "Super Mario",           "Jogo de plataforma",   100.00,     10,     1),     (
    8, "God of War",            "Jogo de ação",         150.00,     5,      1),     (
    9, "GTA V",                 "Jogo de ação",         200.00,     10,     1),     (
    10, "Call of Duty",         "Jogo de ação",         250.00,     5,      2),     (
    11, "Fifa",                 "Jogo de futebol",      100.00,     10,     1),     (
    12, "Gears of War",         "Jogo de ação",         200.00,     10,     1),     (
    13, "Gears of War 2",       "Jogo de ação",         250.00,     5,      1),     (
    14, "Gears of War 3",       "Jogo de ação",         300.00,     10,     1),     (
    15, "Gears of War 4",       "Jogo de ação",         350.00,     5,      1),     (
    16, "Gears of War 5",       "Jogo de ação",         400.00,     10,     7),     (
    17, "Super Mario 2",        "Jogo de plataforma",   100.00,     10,     5),     (
    18, "Mortal Kombat",        "Jogo de luta",         300.00,     10,     5),     (
    19, "Mortal Kombat X",      "Jogo de luta",         350.00,     5,      5),     (
    20, "Mortal Kombat 2",      "Jogo de luta",         400.00,     10,     5),     (
    21, "Mortal Kombat 3",      "Jogo de luta",         450.00,     5,      5),     (
    22, "Mortal Kombat 4",      "Jogo de luta",         500.00,     10,     2),     (
    23, "Assassins Creed",      "Jogo de Ação",         50.00,      10,     1),     (
    24, "Horizon zero down",    "Aventura, Ação",       500.00,     10,     2),     (
    25, "Call of Duty",         "Corrida, Ação",        500.00,     10,     3),     (
    26, "Fifa",                 "Esportes",             500.00,     10,     4),     (
    27, "MMO",                  "MMORPG",               500.00,     10,     6),     (
    28, "Super Mario",          "Plataforma",           500.00,     10,     7),     (
    29, "The Witcher",          "RPG",                  500.00,     10,     8),     (
    30, "Simulador",            "Simulador",            500.00,     10,     9),     (
    31, "Bloodborne",           "Terror",               500.00,     10,     10),    (
    32, "F-Zero",               "Tiro",                 500.00,     10,     11);


-- Inserção de dados na tabela Cliente
-- Inserir 10 clientes
insert into
    Cliente
values (
    1,"João", "000.000.000-00", "joão@gmail.com", 1, 1),(
    2,"Maria","111.111.111-11","maria@gmail.com", 2,2),(
    3,"José","222.222.222-22","jose@gmail.com", 3,3),(
    4,"Joana","333.333.333-33","Joana@gmail.com", 4,4), (
    5, "Vinicius", "444.444.444-44", "Vinicius@gmail.com", 5, 5), (
    6, "Marcos", "555.555.555-55", "Marcos@gmail.com", 6,6);

insert into
    Endereco
values (1,"João Pessoa",156,"Esmeralda","São Paulo","00000-000","teste","Sp"),(
    2,"6 de setembro",7,"Rua das Américas","São Paulo","00000-000","teste","Sp"),(
    3,"5 de abril",8,"Boa pessoa","Recife","00000-000","teste","PE"),(
    4,"5 de maio",9,"Rua das Américas","São Paulo","00000-000","teste","Sp"), (
    5, "Dom Pedro", 56, "Morro do dende", "Rio de Janeiro", "00000-00", "teste", "Rj"), (
    6, "Copacabana", 15, "Copacabana", "Rio de Janeiro", "11111-00", "Só teste", "Rj");

insert into
    Telefones
values (1, "11-1111-1111"),(
    1, "22-2222-2222"),(
    2, "33-3333-3333"),(
    3, "44-4444-4444"),(
    4, "55-5555-5555"), (
    4, "55-5555-5555"), (
    5, "66-6666-6666"), (
    6, "77-7777-7777");

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
    4, 4), (
    5, 5), (
    6, 6), (
    10, 1);


select count(*) as "Cliente" from Cliente;
select count(*) as "Endereco" from Endereco;
select count(*) as "Jogos" from Jogos;
select count(*) as "Segmento" from Segmento;
select count(*) as "Segmento_has_Jogos" from Segmento_has_Jogos;
select count(*) as "Telefones" from Telefones;
select count(*) as "JogoAlugado" from JogoAlugado;

/*
4) Realizar ao menos 06 (seis) consultas de dados usando: 
    Junção (JOIN),
    Agrupamento (GROUP BY), 
    Visões (VIEWs), etc.

Baseando-se nas questões estratégicas da empresa escolhida cada aluno deverá realizar comandos SQL (usando Junção (JOIN), Agrupamento (GROUP BY), etc.) de maneira a responder questões que sejam importantes para sua tomada de decisão.

Os alunos deverão ficar atentos à Modelagem verificando a associação/construção desta com os comandos SQL. Cada aluno deverá entregar o arquivo com a Modelagem (.XML) e o Script (.SQL) com os comandos construídos.

*/


-- 1) quantos clientes tem na região de São Paulo?
select count(*) as "Clientes"
from Cliente as c
inner join Endereco as e on c.Endereco = e.id
where e.cidade = "São Paulo";

-- 2) quantos clientes tem na região de São Paulo e que possuem mais de um telefone?
select c.Nome as "Nome", count(*) as "Clientes que tem mais de um telefone" 
from Cliente as c
inner join Endereco as e on c.Endereco = e.id
inner join Telefones as t on c.id = t.id
where e.cidade = "São Paulo" and (
    select count(*)
    from Telefones as t2
    where t2.id = c.id
) > 1
group by c.id;

-- 3) De quais cidades são meus clientes? 
select c.Nome as "Nome", e.cidade as "Cidade"
from Cliente as c
inner join Endereco as e on c.Endereco = e.id
group by e.cidade, c.id;

-- 4) Quais os jogos ainda não foram alugados?

select * 
from Jogos as j
where j.id not in (
    select ja.idJogos
    from JogoAlugado as ja
);

-- 5) Quais os jogos que foram alugados?
select j.Nome
from Jogos as j
where j.id in (
    select ja.idJogos
    from JogoAlugado as ja
);

-- 6) Quantos jogos temos por Segmento?
select s.Nome, count(*) as "Total"
from Segmento_has_Jogos as sj
inner join Jogos as j on j.id = sj.idJogos
inner join Segmento as s on s.id = sj.idSegmento
group by s.id;

-- 7) Quais os jogos são do segmento de ação e que foram alugados?
select j.Nome
from Segmento_has_Jogos as sj
inner join Jogos as j on j.id = sj.idJogos
inner join Segmento as s on s.id = sj.idSegmento
where s.Nome = "Ação" and j.id in  (
    select ja.idJogos
    from JogoAlugado as ja
);

-- 8) Quais os segmentos de jogos que foram alugados?
select s.Nome
from Segmento_has_Jogos as sj
inner join Jogos as j on j.id = sj.idJogos
inner join Segmento as s on s.id = sj.idSegmento
where j.id in (
    select ja.idJogos
    from JogoAlugado as ja
);


-- 9) Quais os segmentos de jogos que foram alugados e que possuem mais de um cliente?
select s.Nome, j.nome
from Segmento_has_Jogos as sj
inner join Jogos as j on j.id = sj.idJogos
inner join Segmento as s on s.id = sj.idSegmento
where j.id in (
    select ja.idJogos
    from JogoAlugado as ja
) and (
    select count(*)
    from Cliente as c
    where c.id in (
        select ja.idCliente
        from JogoAlugado as ja
    )
) > 1;

-- 10) Quantos e quais jogos ainda não foram alugados?
select j.Nome, j.estoque
from Jogos as j
where j.id not in (
    select ja.idJogos
    from JogoAlugado as ja
);

-- 11) Qual a média de jogos alugados por cliente?

select avg(t.id) as "Média de jogos alugados por cliente"
from (
    select count(j.idJogos) as id, Nome
    from JogoAlugado as j
    inner join Cliente as c on c.id = j.idCliente
    group by c.id
) as t;

-- 12) Qual o total de jogos alugados por cliente?
select count(j.idJogos) as "Total de jogos alugados por cliente", Nome
from JogoAlugado as j
inner join Cliente as c on c.id = j.idCliente
group by c.id