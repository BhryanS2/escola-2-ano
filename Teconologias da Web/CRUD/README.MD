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
```

- Depois de criar o banco de dados, clique em "Executar".
- Volte para o http://localhost/tecweb/
- Pode cadastrar o usuário.

## Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

- [php](https://www.php.net/)
- [Materialize](https://materializecss.com/)
