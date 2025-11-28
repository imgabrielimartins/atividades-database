CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
descricao VARCHAR(100),
receita CHAR(1)
);

INSERT INTO tb_categorias(nome_categoria, descricao, receita) VALUES
("Medicamentos livres", "Medicamentos que não requerem receita, como analgésicos.", "N"),
("Medicamentos Controlados", "Medicamentos de uso controlado que exigem a retenção da receita médica na compra.","S"); 


INSERT INTO tb_categorias(nome_categoria, descricao) VALUES
("Higiene e Beleza", "Inclui itens como shampoos, sabonetes, desodorantes e maquiagens."),
("Suplementos", "Vitaminas, minerais, proteínas e alimentos funcionais."),
("Vacinas", "Produtos sensíveis que exigem armazenamento em baixas temperaturas (2°C a 8°C).");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produtos VARCHAR(100) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
estoque INT,
data_validade DATE,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produtos, preco, estoque, data_validade, id_categoria) VALUES
("Paracetamol", 12.00, 100, '2026-12-31', 1),
("Amoxicilina", 25.00, 200, '2026-12-31', 2),
("Shampoo", 30.00, 500, '2027-12-31', 3),
("Vitamina C", 50.00, 100, '2028-12-31', 4),
("Vacina Antigripal", 120.00, 50, '2028-12-31', 5),
("Antiácido Mastigável", 12.00, 200, '2027-12-31', 1),
("Whey Protein Baunilha", 120.00, 30, '2027-12-31', 4),
("Protetor Solar FPS 30", 40.00, 500, '2027-12-31', 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produtos LIKE "%C%";

SELECT nome_produtos, preco, estoque, data_validade, tb_produtos.id_categoria, tb_categorias.nome_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT nome_produtos, preco, estoque, data_validade, tb_produtos.id_categoria, tb_categorias.nome_categoria FROM tb_produtos
INNER JOIN tb_categorias WHERE tb_produtos.id_categoria = 5;