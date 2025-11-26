CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE produtos(
		Id BIGINT AUTO_INCREMENT PRIMARY KEY,
		Nome VARCHAR(255) NOT NULL,
		Preco DECIMAL(10, 2),
		Estoque INT NOT NULL,
		Descricao TEXT,
		Cor VARCHAR(20)
);

INSERT INTO produtos(Nome, Preco, Estoque, Descricao, Cor) 
VALUES 
    ('Smartphone Galaxy X', 1899.99, 25, 'Smartphone Android com 128GB, tela 6.5" e câmera tripla', 'Preto'),
    ('Notebook Gamer Thunder', 3599.90, 12, 'Notebook gamer com RTX 3050, 16GB RAM e SSD 512GB', 'Cinza'),
    ('Fone de Ouvido Bluetooth', 299.50, 50, 'Fone wireless com cancelamento de ruído e 30h de bateria', 'Branco'),
    ('Smart TV 55" 4K', 2499.00, 8, 'TV LED 4K UHD com HDR e Smart TV integrado', 'Preto'),
    ('Tablet Pro 10.5"', 1299.99, 18, 'Tablet com caneta stylus, ideal para desenho e anotações', 'Azul'),
    ('Mouse Gamer RGB', 189.90, 35, 'Mouse óptico com iluminação RGB e 7 botões programáveis', 'Vermelho'),
    ('Teclado Mecânico', 459.00, 22, 'Teclado mecânico switches blue, retroiluminado RGB', 'Preto'),
    ('Monitor 27" Curvo', 1599.00, 10, 'Monitor gaming curvo 144Hz, 1ms de resposta', 'Prata');

SELECT * FROM produtos WHERE preco > 500
SELECT * FROM produtos WHERE preco < 500


UPDATE produtos 
SET Nome = 'XBOX 360', 
    Descricao = 'Um dos melhores video games criado pelo ser humano' 
WHERE Nome = 'Mouse Gamer RGB';
