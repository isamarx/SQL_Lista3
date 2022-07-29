-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

USE db_marketplace

INSERT INTO Vendas

VALUES
(58, 'Cosmeticos', 'Creme de cabelo'),
(72, 'Roupas', 'Tênis')

INSERT INTO Usuarios
VALUES
('Sabrina', 'sabrininha@email.com', 'bina123', '548.908.999-65', 2),
('Amanda', 'mandinha@email.com', 'mandu123', '789.432.045-37', 1)

INSERT INTO CarrinhoDePedidos
VALUES
('Esmaltes', 545.85, 2),
('Roupas', 879.98, 1)

INSERT INTO Entrega
VALUES
('Entrega via Correios', '29/05/2022', 2),
('Entrega via Correios', '25/04/2022', 1)

SELECT * FROM Entrega
WHERE Descricao LIKE 'Entrega via Correios'

SELECT * FROM CarrinhoDePedidos
WHERE Preco BETWEEN 500 AND 900