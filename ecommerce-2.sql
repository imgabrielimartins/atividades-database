CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_genero(
genero_id BIGINT,
genero VARCHAR(100),
PRIMARY KEY(genero_id)
);

INSERT INTO tb_genero(genero_id, genero) VALUES
(1, "Romance"),
(2, "Terror"),
(3, "Suspense"),
(4, "Ação");

SELECT * FROM tb_genero;

CREATE TABLE tb_livros(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(6,2),
numero_paginas INT,
data_lancamento DATE,
genero_id BIGINT,
nome_autor VARCHAR(200),
PRIMARY KEY(id),
FOREIGN KEY (genero_id) REFERENCES tb_genero(genero_id)
);

INSERT INTO tb_livros(nome,preco,numero_paginas,data_lancamento,genero_id,nome_autor) VALUES
("A Garota no Trem", 49.90, 320,'2015-05-01',3,"Paula Hawkins"),
("O Iluminado",65.00,528,'1977-01-28',2,"Stephen King"),
("Como Eu Era Antes de Você",39.99,352,'2012-01-05',1,"Jojo Moyes"),
("Anjos e Demônios",72.50,608,'2000-05-01',4,"Dan Brown"),
("A Paciente Silenciosa", 45.00,336, '2019-01-01',3,"Alex Michaelides"),
("O Retrato de Dorian Gray", 42.00,272,'1890-07-01',1,'Oscar Wilde'),
("A Metamorfose",25.90,96,'1915-10-01',2,"Franz Kafka"),
("O Hobbit",89.90,310,'1937-09-21',4,"J.R.R. Tolkien");

SELECT * FROM tb_livros;

SELECT * FROM tb_livros WHERE preco > 500.00;

SELECT * FROM tb_livros WHERE preco <  500.00;

UPDATE tb_livros SET preco = 50.50 WHERE id = 7;

SELECT * FROM tb_livros;