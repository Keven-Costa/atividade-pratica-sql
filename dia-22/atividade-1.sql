CREATE DATABASE db_servico_rh;

USE db_servico_rh;

CREATE TABLE colaboradores(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    CPF VARCHAR(11) UNIQUE,
    Cargo VARCHAR(255),
    Salario DECIMAL(10, 2),
    Telefone VARCHAR(20)
);


INSERT INTO colaboradores(Nome, CPF, Cargo, Salario, Telefone) 
VALUES 
    ('Bob Esponja', '12345678910', 'Cozinheiro', 1550.00, '0123456789'),
    ('Naruto Uzumaki', '00012345678', 'Hokage', 50000.00, '9123456789'),
    ('Tony Soprano', '11122233344', 'Consultor de Negócios', 75000.00, '91333445566'),
    ('Michael Scott', '22233344455', 'Gerente Regional', 45000.00, '91444556677'),
    ('Will Smith', '33344455566', 'Ator', 120000.00, '91555667788');



SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET Nome = 'Walter White' WHERE Nome = 'BoB Esponja'
