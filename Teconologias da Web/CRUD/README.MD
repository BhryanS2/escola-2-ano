# Rodando Localmente

## Requerimentos

- [Xampp](https://www.apachefriends.org/pt_br/download.html)

## Como rodar?

- Inicialmente, instale e configure o Xampp, seguindo as instruções do site.
- Rode todos os os serviços do Xampp, como o MySQL, Apache, PHP, etc.
- Abra o navegador e acesse o endereço: http://localhost/
- Aparecerá essa página.

## Configurando Banco de Dados

- Abra no navegador o endereço: http://localhost/phpmyadmin/
- Clique em SQL.
- Cole o comando abaixo:

```sql
drop database if exists CRUD;
create database if not exists CRUD;
use CRUD;

-- Criação da tabela de usuários
create table if not exists user (
  id integer not null primary key AUTO_INCREMENT,
  nome varchar(255) not null,
  email varchar(255) not null,
  birthdate date not null,
  password varchar(255) not null,
  Cpf varchar(14) not null,
  avatar varchar(1000) not null
);

create table if not exists messages (
  id integer primary key AUTO_INCREMENT,
  usuario_id integer not null,
  mensagem varchar(255) not null,
  data_hora datetime not null
);

```

- Depois de criar o banco de dados, clique em "Executar".
- Volte para o http://localhost/tecweb/
- Pode cadastrar o usuário.

## Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

- [php](https://www.php.net/)
- [Materialize](https://materializecss.com/)
