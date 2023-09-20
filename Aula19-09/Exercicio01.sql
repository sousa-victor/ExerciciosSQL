CREATE DATABASE db_generation_games_online;
USE db_generation_games_online;

CREATE TABLE tb_classes(
IdClasse BIGINT IDENTITY (1,1),
Raca VARCHAR(255),
Ranged BIT,
PRIMARY KEY (IdClasse)
);

CREATE TABLE tb_personagens(
IdPersonagem BIGINT IDENTITY(1,1),
PoderAtk INT,
PoderDef INT,
Nome VARCHAR(255),
IdClasse BIGINT,
FOREIGN KEY (IdClasse) REFERENCES tb_classes(IdClasse)
);

INSERT INTO tb_classes(Raca, Ranged)
VALUES
('High Elf', 1),
('Argonian', 0),
('Breton', 0),
('Wood Elf', 1),
('Dark Elf', 1);

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(PoderAtk, PoderDef, Nome)
VALUES
(7630, 2300, 'Victor'),
(1500, 10000, 'Ralf'),
(4561, 6521,'Lucian'),
(1423, 2530, 'Jhin'),
(4790, 5800, 'Caitlyn'),
(8000, 2000, 'Vayne'),
(930, 1000, 'Ashe'),
(1900, 2000, 'Samira');

SELECT * FROM tb_personagens WHERE PoderAtk >2000;
SELECT * FROM tb_personagens WHERE PoderDef >1000 AND PoderDef <2000;
SELECT * FROM tb_personagens WHERE Nome LIKE '%c%';
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.IdClasse = tb_classes.IdClasse;