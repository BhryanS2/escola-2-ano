drop database if exists Loja;
create database if not exists Loja;
use Loja;

create table if not exists Roupa (
    id int not null primary key auto_increment,
    nome varchar(255) not null,
    cpf varchar(14) not null,
    email varchar(255) not null,
    telefone varchar(255) not null,
    pecaAdquirida varchar(255) not null,
    valor decimal(10, 2) not null,
    formaDePagamento varchar(255) not null
);