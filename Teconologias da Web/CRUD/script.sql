drop database if exists CRUD;
create database if not exists CRUD;
use CRUD;

-- Criação da tabela de usuários
create table if not exists users (
  id integer not null primary key AUTO_INCREMENT,
  name varchar(255) not null,
  birthdate date not null,
  Cpf varchar(14) not null,
  avatar varchar(1000) not null,
  admin boolean not null
);

create table if not exists users_login (
  id integer not null primary key AUTO_INCREMENT,
  user_id integer not null,
  email varchar(255) not null,
  password varchar(255) not null,
  CONSTRAINT users_login_id foreign key (user_id) references users(id) ON DELETE CASCADE ON UPDATE CASCADE
);