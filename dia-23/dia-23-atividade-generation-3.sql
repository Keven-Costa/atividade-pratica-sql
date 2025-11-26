CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255),
    Tipo VARCHAR(50)
);

CREATE TABLE tb_produtos(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(6,2) NOT NULL,
    Quantidade INT NOT NULL,
    Fabricante VARCHAR(100) NOT NULL,
    Validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_categorias (Nome, Descricao, Tipo) VALUES 
("Medicamentos", "Remédios controlados e de uso contínuo", "Farmacêutico"),
("Cosméticos", "Produtos de beleza e cuidados pessoais", "Beleza"),
("Higiene", "Produtos para higiene pessoal", "Higiene"),
("Vitaminas", "Suplementos vitamínicos e minerais", "Suplementos"),
("Maternidade", "Produtos para gestantes e bebês", "Infantil");

INSERT INTO tb_produtos (Nome, Preco, Quantidade, Fabricante, Validade, categoria_id) VALUES 
("Paracetamol", 15.90, 100, "Medley", "2025-12-31", 1),
("Shampoo Anticaspa", 28.50, 50, "Clear", "2024-10-15", 2),
("Creme Dental", 8.90, 200, "Colgate", "2024-08-20", 3),
("Vitamina C", 45.00, 80, "Nature's Bounty", "2025-05-30", 4),
("Fralda Pampers", 65.90, 30, "Procter & Gamble", "2026-03-15", 5),
("Protetor Solar", 55.00, 60, "Neutrogena", "2024-12-31", 2),
("Ibuprofeno", 12.50, 120, "Eurofarma", "2025-09-30", 1),
("Complexo B", 38.90, 70, "Centrum", "2025-07-25", 4);

SELECT * FROM tb_produtos WHERE Preco > 50.00;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT p.*, c.Nome AS Categoria, c.Descricao, c.Tipo 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.Id;

SELECT p.*, c.Nome AS Categoria, c.Descricao, c.Tipo 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.Id 
WHERE c.Nome = "Cosméticos";


