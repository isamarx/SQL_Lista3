-- DML (CRUD)
-- SELECT
-- INSERT
-- UPDATE
-- DELETE

USE db_redesocial

INSERT INTO Usuarios
VALUES
( 1, 'Laura', 'laura@email.com','laura123' ),
( 2, 'Fernanda', 'fernanda@email.com','feer456' )

INSERT INTO Categoria
VALUES
(1, 'Estetica'),
(2, 'Esporte')

INSERT INTO Grupos
VALUES
(1, 'Beleza Feminina', 1),
(2, 'Tudo sobre Esporte', 2)

INSERT INTO Postagens
VALUES
(1, 'Sua pele sempre macia', 'Tutorial de pele hidratada', 1, 1, 1),
(2, 'S�o Paulo', 'S�o Paulo ganhou outra vez', 2, 2, 2)

SELECT * FROM Postagens
WHERE Titulo LIKE 'S�o Paulo'

SELECT * FROM Grupos
WHERE Nome LIKE 'Beleza Feminina'