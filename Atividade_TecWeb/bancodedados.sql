create database formulario;
use formulario;

-- 

CREATE TABLE clientes (
  idClientes INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
  nome VARCHAR(40) NULL, 
  email VARCHAR(45) NULL,
  telefone VARCHAR(11),
  sexo VARCHAR(15),
  data_nasc DATE,
  cidade VARCHAR(45),
  estado VARCHAR(45),
  endereco VARCHAR(45),
  PRIMARY KEY(idClientes)
);
