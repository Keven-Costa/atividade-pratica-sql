CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255),
    Tipo VARCHAR(50)
);

CREATE TABLE tb_personagens(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Ataque INT NOT NULL,
    Defesa INT NOT NULL,
    Vida INT NOT NULL,
    Nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);

INSERT INTO tb_classes (Nome, Descricao, Tipo) VALUES 
("Guerreiro", "Especialista em combate corpo a corpo", "Força"),
("Mago", "Mestre das artes arcanas", "Inteligência"),
("Arqueiro", "Especialista em ataques à distância", "Agilidade"),
("Ladino", "Mestre da furtividade e precisão", "Agilidade"),
("Clérigo", "Curandeiro e suporte divino", "Sabedoria");

INSERT INTO tb_personagens (Nome, Ataque, Defesa, Vida, Nivel, classe_id) VALUES 
("Conan", 2500, 1800, 3000, 15, 1),
("Merlin", 1800, 1200, 1500, 12, 2),
("Legolas", 2200, 1500, 2000, 14, 3),
("Sombra", 1900, 1100, 1700, 13, 4),
("Cleric", 1600, 2000, 2500, 11, 5),
("Thor", 2800, 2200, 3500, 18, 1),
("Arcanus", 2100, 1300, 1600, 14, 2),
("Caçador", 2300, 1600, 2100, 15, 3);

SELECT * FROM tb_personagens WHERE Ataque > 2000;

SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE "%C%";

SELECT p.*, c.Nome AS Classe, c.Descricao, c.Tipo 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.Id;

SELECT p.*, c.Nome AS Classe, c.Descricao, c.Tipo 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.Id 
WHERE c.Nome = "Arqueiro";


