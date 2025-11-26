CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255),
    Tipo VARCHAR(20)
);

CREATE TABLE tb_pizzas(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(6,2) NOT NULL,
    Tamanho VARCHAR(20),
    Ingredientes TEXT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_categorias (Nome, Descricao, Tipo) VALUES 
("Tradicional", "Pizzas clássicas com ingredientes tradicionais", "Salgada"),
("Especial", "Pizzas gourmet com ingredientes premium", "Salgada"),
("Doce", "Pizzas doces para sobremesa", "Doce"),
("Vegetariana", "Pizzas sem carne, apenas com vegetais", "Salgada"),
("Premium", "Pizzas com ingredientes importados e especiais", "Salgada");

INSERT INTO tb_pizzas (Nome, Preco, Tamanho, Ingredientes, categoria_id) VALUES 
("Margherita", 42.00, "Média", "Molho de tomate, mussarela, manjericão", 1),
("Calabresa", 38.50, "Média", "Calabresa, cebola, mussarela", 1),
("Quatro Queijos", 65.00, "Grande", "Mussarela, provolone, parmesão, gorgonzola", 2),
("Portuguesa", 58.00, "Grande", "Presunto, mussarela, ovos, cebola, azeitonas", 2),
("Chocolate", 75.00, "Média", "Chocolate, morangos, leite condensado", 3),
("Rúcula", 85.00, "Grande", "Rúcula, tomate seco, mussarela de búfala", 4),
("Frango Catupiry", 45.00, "Média", "Frango desfiado, catupiry, milho", 1),
("Mexicana", 95.00, "Grande", "Calabresa apimentada, pimentão, cebola roxa", 5);

SELECT * FROM tb_pizzas WHERE Preco > 45.00;

SELECT * FROM tb_pizzas WHERE Preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE Nome LIKE "%M%";

SELECT p.*, c.Nome AS Categoria, c.Descricao, c.Tipo 
FROM tb_pizzas p 
INNER JOIN tb_categorias c ON p.categoria_id = c.Id;

SELECT p.*, c.Nome AS Categoria, c.Descricao, c.Tipo 
FROM tb_pizzas p 
INNER JOIN tb_categorias c ON p.categoria_id = c.Id 
WHERE c.Nome = "Doce";


