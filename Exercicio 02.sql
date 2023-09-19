CREATE DATABASE db_ecommerce;
use db_ecommerce;

CREATE TABLE tb_produtos(
Id INT IDENTITY(1,1),
Marca VARCHAR(255),
Modelo VARCHAR(255),
Potencia INT,
Preco DECIMAL (4,2)
);

ALTER TABLE tb_produtos ALTER COLUMN Preco DECIMAL (7,2);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(
Marca, Modelo, Potencia, Preco)
VALUES
('Audi', 'R8', 660, 1120.00),
('Hyundai', 'HB20', 82, 60.30),
('Lamborghini', 'Aventador', 700, 2900),
('Renault', 'Kwid', 70, 53),
('Mercedes-Benz', 'AMG GT', 770, 1200);

SELECT * from tb_produtos WHERE Preco > 500;
SELECT * from tb_produtos WHERE Preco < 500;

ALTER TABLE tb_produtos ADD PRIMARY KEY (Id);

UPDATE tb_produtos SET Modelo = 'Elantra' WHERE Id = 3;