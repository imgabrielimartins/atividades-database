CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
classe_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_classe VARCHAR(100) NOT NULL,
poder VARCHAR(100) NOT NULL
);

INSERT INTO tb_classes( nome_classe, poder) VALUES 
("Mago", "Inteligência"),
("Guerreiro", "Força"),
("Ladrão", "Destreza"),
("Sacerdote", "Sabedoria"),
("Bardo","Carisma");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
personagem_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_personagem VARCHAR(100) NOT NULL,
nivel INT,
vida INT,
experiencia BIGINT,
poder_ataque INT,
poder_defesa INT,
classe_id BIGINT,
FOREIGN KEY(classe_id) REFERENCES tb_classes(classe_id)
);

INSERT INTO tb_personagens(nome_personagem, nivel,vida,experiencia,poder_ataque,poder_defesa,classe_id) VALUES
("Caelen", 50, 78,1000,1000,100,3),
("Vortan", 80, 28,200,700,1000,2),
("Lyra", 140, 77,7000,2000,100,1),
("Soren", 30, 100,500,400,300,4),
("Zephyr", 60, 98,1000,1000,10000,5),
("Dracon", 79, 37,800,29000,1000,2),
("Misha", 75, 65,1000,1000,200,3),
("Elias", 100, 20,2000,100,1000,1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%C%";

SELECT nome_personagem, nivel,vida, experiencia,poder_ataque, poder_defesa, tb_classes.nome_classe, poder
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.classe_id;

SELECT nome_personagem, nivel,vida, experiencia,poder_ataque, poder_defesa, tb_classes.nome_classe, poder
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.classe_id WHERE tb_classes.classe_id = 1 ORDER BY tb_personagens.nivel DESC;

SELECT tb_classes.nome_classe, AVG(tb_personagens.nivel) AS Nivel_Medio_da_Classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.classe_id GROUP BY tb_classes.nome_classe
ORDER BY Nivel_Medio_da_Classe DESC;
