drop database if exists CRUD;
create database if not exists CRUD;
use CRUD;

-- Criação da tabela de usuários
create table if not exists users (
  id integer not null primary key AUTO_INCREMENT,
  name varchar(255) not null,
  email varchar(255) not null,
  birthdate date not null,
  password varchar(255) not null,
  Cpf varchar(14) not null,
  avatar varchar(1000) not null,
  admin boolean not null
);

create table if not exists messages (
  id integer not null primary key AUTO_INCREMENT,
  usuario_id integer not null,
  mensagem varchar(255) not null,
  data_hora datetime not null
);

insert INTO users (name, email, birthdate, password, Cpf, avatar, admin) 
values ("teste", "teste@teste.com", "2004-11-03", "teste", "000.000.000-00", "https://github.com/diego3g.png", 1);
