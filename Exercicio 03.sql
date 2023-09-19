CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_estudantes(
NumChamada INT IDENTITY (1,1),
Nome VARCHAR(255) NOT NULL,
Sexo VARCHAR(10),
Nota DECIMAL(3,1),
Ano INT,
PRIMARY KEY(NumChamada));

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (Nome, Sexo, Nota, Ano)
VALUES
('Victor', 'Masculino', 10.0, 8),
('Caitlyn', 'Feminino', 7.3, 5),
('Vayne', 'Feminino', 8.8, 3),
('Jhin', 'Masculino', 4.4, 4),
('Jax', 'Masculino', 3.5, 6);

UPDATE tb_estudantes SET Nota = 10 WHERE Nome = 'Vayne';