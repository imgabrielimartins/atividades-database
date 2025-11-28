CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
categoria_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
descricao_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos(
produto_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
descricao_produto VARCHAR(100) NOT NULL
);

INSERT INTO tb_categorias(nome_categoria,descricao_categoria) VALUES
("Pizzas Clássicas","Sabores tradicionais"),
("Pizzas Gourmet","Sabores sofisticados ou com ingredientes especiais"),
("Pizzas Doces","Todas as opções doces"),
("Vegetarianas","Opções sem carne animal e opções com derivados."),
("Veganas", "Opções sem carne animal e sem derivados.");

INSERT INTO tb_categorias(nome_categoria,descricao_categoria) VALUES
("Pizzas Clássicas","Sabores tradicionais"),
("Pizzas Gourmet","Sabores sofisticados ou com ingredientes especiais"),
("Pizzas Doces","Todas as opções doces"),
("Vegetarianas","Opções sem carne animal e opções com derivados."),
("Veganas", "Opções sem carne animal e sem derivados.");

INSERT INTO tb_produtos(nome_produto,descricao_produto) VALUES
("Bebidas","Refrigerantes, sucos e água"),
("Cervejas Artesanais","Opções premium de cervejas"),
("Acompanhamentos", "Batata Frita, Pão de Alho"),
("Sobremesas","Pudim, Mousse, Petit Gateau");

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

CREATE TABLE tb_pizzas(
pizza_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
ingredientes VARCHAR(100),
preco DECIMAL(6,2),
tamanho CHAR(1),
vegetariana CHAR(1),
categoria_id BIGINT,
produto_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id),
FOREIGN KEY (produto_id) REFERENCES tb_produtos(produto_id)
);

INSERT INTO tb_pizzas(nome,ingredientes,preco,tamanho,vegetariana,categoria_id) VALUES
("Margherita Clássica", "Molho de tomate, muçarela, tomate fatiado e manjericão fresco.", 45.00, 'G', 'S', 1),
("Calabresa Picante", "Molho, muçarela, calabresa fatiada, cebola e pimenta calabresa.", 48.90, 'G', 'N', 1),
("Quatro Queijos Premium","Muçarela, Provolone, Gorgonzola e Parmesão. Opcional: Geleia de Pimenta.", 62.00, 'M', 'S',4),
("Abobrinha Vegana", "Molho de tomate, muçarela vegana, abobrinha em tiras e alho-poró.", 58.00, 'M','S', 4),
("Chocolate Branco", "Massa doce, chocolate branco derretido e raspas de limão.", 40.00, 'P', 'S',3),
("Banana com Doce de Leite", "Massa doce, fatias de banana, doce de leite e canela.", 42.80, 'P', 'S',3),
("Pato Confit com Geleia de Figo", "Peito de pato desfiado em baixa temperatura, queijo brie, rúcula e geleia artesanal de figo.", 89.90, 'G', 'N', 2);

INSERT INTO tb_pizzas (nome,ingredientes, preco, produto_id) VALUES
("Coca-Cola (Lata)","Bebida gaseificada com açúcar.", 6.50, 1),
("Suco de Laranja Natural","Suco natural de laranja, sem adição de açúcar.", 9.50, 1),
("Cerveja Artesanal","Cerveja de alta fermentação, teor alcoólico 6.5%.", 22.00, 2);

INSERT INTO tb_pizzas (nome, preco, produto_id) VALUES 
("Batata Frita", 10.00, 3),
("Pão de alho", 18.00, 3),
("Pastel", 8.00, 3),
("Sorvete", 5.00,4),
("Pudim", 10.00,4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, ingredientes,preco, tamanho,vegetariana, tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.categoria_id;

SELECT nome, ingredientes,preco, tamanho,vegetariana, tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.categoria_id 
WHERE tb_categorias.categoria_id = 4 ORDER BY tb_pizzas.preco ASC;
