CREATE DATABASE db_exe01;
use db_exe01;

CREATE TABLE tb_colaboradores(
Matricula INT IDENTITY(100,1),
Nome VARCHAR(255) NOT NULL,
Setor VARCHAR(255),
AnosNaEmpresa INT,
Salario DECIMAL(6,2) NOT NULL); 

ALTER TABLE tb_colaboradores ALTER COLUMN Salario DECIMAL (7,2);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(
Nome, Setor, AnosNaEmpresa, Salario)
VALUES
('Victor', 'Almoxarifado', 2, 1313.00),
('Rafa', 'Gerencia', 10, 10400.50),
('Jacque', 'Gerencia', 8, 9500.10),
('Yuri', 'Administrativo', 5, 6300.20),
('Apollo', 'Manutenção', 1, 1313.00);

SELECT Nome FROM tb_colaboradores where Salario > 2000;
SELECT Nome FROM tb_colaboradores where Salario < 2000;

UPDATE tb_colaboradores SET Salario = 99999.99 WHERE Nome = 'Victor';