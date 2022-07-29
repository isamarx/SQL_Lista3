-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_marketplace

USE db_marketplace

CREATE TABLE Vendas(

   Id_Vendas INT PRIMARY KEY IDENTITY NOT NULL,
   Quantidade INT NOT NULL,
   Categoria VARCHAR(50) NULL,
   Produtos VARCHAR(MAX) NOT NULL,
);

CREATE TABLE Usuarios(

	Id_Usuarios INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	CPF VARCHAR(15) NOT NULL,
	FK_Id_Vendas INT NOT NULL,
	FOREIGN KEY (FK_Id_Vendas) REFERENCES Vendas (Id_Vendas)
);

CREATE TABLE CarrinhoDePedidos(

    Id_CarrinhoDePedidos INT PRIMARY KEY IDENTITY NOT NULL,
    Produtos VARCHAR(MAX) NOT NULL,
    Preco FLOAT NOT NULL,
    FK_Id_Usuarios INT NULL,
    FOREIGN KEY (FK_Id_Usuarios) REFERENCES Usuarios (Id_Usuarios)
);

CREATE TABLE Entrega(

    Id_Entrega INT PRIMARY KEY IDENTITY NOT NULL,
    Descricao VARCHAR(100) NOT NULL,
    PrevisaoDeEntrega VARCHAR(50) NOT NULL,
    FK_Id_CarrinhoDePedidos INT NOT NULL,
    FOREIGN KEY (FK_Id_CarrinhoDePedidos) REFERENCES CarrinhoDePedidos (Id_CarrinhoDePedidos)
);