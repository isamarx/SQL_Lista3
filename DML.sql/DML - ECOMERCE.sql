-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

USE db_ecomerce

INSERT INTO Usuarios

VALUES
( 1, 'Samara', 'samarinha@email.com', 'sami123', '178.900.564-44'),
( 2, 'Lucas', 'lucas@email.com', '675lucas', '345.278.057-08'),
(3, 'Rafaela', 'rafinha@email.com', 'rafa908','546.444.980-77');


INSERT INTO Produtos

VALUES
(1, 276.54, 23, 'Cosméticos', 'Pix', 3),
(2, 578.07, 3, 'Roupas', 'Debito', 1),
(3, 158.74, 9, 'Alimentação', 'Crédito', 2)

INSERT INTO Entrega
VALUES
(1, 'Entrega de Produtos Chiques', '25/04/2022', 3, 1),
(2, 'Alimentos Saudaveis', '30/04/2022', 2, 3),
(3, 'Entrega de Roupas', '23/09/2022',1, 2)

SELECT * FROM Usuarios
WHERE nome LIKE 'Samara'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5.07 AND 907.54

SELECT * FROM Entrega
WHERE PrevisaoDeEntrega LIKE '20/09/2022'
