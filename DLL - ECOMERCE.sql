-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_ecomerce

USE db_ecomerce

CREATE TABLE Usuarios(

	Id_Usuarios INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	CPF VARCHAR(15) NOT NULL
);

CREATE TABLE Produtos(

   Id_Produtos INT PRIMARY KEY NOT NULL,
   Preco FLOAT NOT NULL,
   Quantidade INT NOT NULL,
   Categoria VARCHAR(50) NULL,
   TipoDePagamento VARCHAR(50) NOT NULL,
   FK_Id_Usuarios INT NOT NULL,
   FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios)
);

CREATE TABLE Entrega(

   Id_Entrega INT PRIMARY KEY NOT NULL,
   Descricao VARCHAR(100) NOT NULL,
   PrevisaoDeEntrega VARCHAR(50) NOT NULL,
   FK_Id_Usuarios INT NOT NULL,
   FK_Id_Produtos INT NOT NULL,
   FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios),
   FOREIGN KEY (FK_Id_Produtos) REFERENCES Produtos (Id_Produtos)
);