CREATE DATABASE db_sistema;

USE db_sistema;

CREATE TABLE tb_departamentos(
departamento_id BIGINT,
nome_departamento VARCHAR(255) NOT NULL,
PRIMARY KEY(departamento_id)
);

INSERT INTO tb_departamentos(departamento_id,nome_departamento) VALUES
(1,"Tecnologia da Informação(TI)"),
(2,"Marketing"),
(3,"Financeiro e Contabilidade");

SELECT * FROM tb_departamentos;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255),
departamento_id BIGINT,
data_nascimento DATE,
data_contratado DATE,
salario DECIMAL(6,2),
PRIMARY KEY (id),
FOREIGN KEY (departamento_id) REFERENCES tb_departamentos(departamento_id)
);

INSERT INTO tb_colaboradores(nome,cargo,departamento_id,data_nascimento,data_contratado,salario) VALUES
("Ana Clara Souza","Desenvolvedora Backend", 1, '1995-02-03','2020-08-15',5500.00),
("Bruno Mendes Lima", "Analista de Marketing Digital", 2, '1982-11-25','2015-05-20',  1200.50),
("Carla Oliveira", "Contador(a)", 3, '2000-01-05', '2022-01-10', 3800.00),
("Daniel Pereira", "Estagiário de TI", 1, '2003-07-18', '2024-03-01', 1500.00),
("Erica Costa Alves", "Designer Gráfico(a)", 2, '1990-09-30', '2018-11-01', 9500.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1800.50 WHERE id = 2;

SELECT * FROM tb_colaboradores;
