CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_turmas(
turma_id BIGINT,
turma VARCHAR(10),
PRIMARY KEY (turma_id)
);

INSERT INTO tb_turmas(turma_id, turma) VALUES
(1,"Turma 1"),
(2,"Turma 2"),
(3,"Turma 3"),
(4, "Turma 4");

SELECT * FROM tb_turmas;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(11) NOT NULL,
data_nascimento DATE,
email VARCHAR(255),
turma_id BIGINT,
data_matricula DATE,
media_notas DECIMAL(4,2),
PRIMARY KEY(id),
FOREIGN KEY (turma_id) REFERENCES tb_turmas(turma_id)
);


INSERT INTO tb_estudantes(nome,cpf,data_nascimento,email,turma_id,data_matricula,media_notas) VALUES
("Pedro Henrique Lima",'12345678901','2005-08-15',"pedro.lima@escola.com",1,'2024-01-20',6.5),
("Julia Mendes Silva", '23456789012','2006-03-20',"julia.silva@escola.com",1,'2024-01-20',3.8),
("Rafaela Alves Castro",'34567890123','2004-11-05',"rafaela.castro@escola.com",2,'2023-01-25',8.9),
("Lucas Pereira Souza",'45678901234','2003-09-10',"lucas.souza@escola.com",3, '2022-01-30',9.0),
("Mariana Ferreira Gomes",'56789012345','2005-06-25',"mariana.gomes@escola.com", 2,'2023-01-25',10.0),
("Gustavo Rocha Santos",'67890123456','2007-01-01',"gustavo.santos@escola.com",4,'2024-01-20',9.6),
("Ana Carolina Brito",'78901234567','2004-04-18',"ana.brito@escola.com",3,'2022-01-30',5.7),
("Thiago Xavier Nunes",'89012345678','2006-12-12',"thiago.nunes@escola.com",3,'2023-01-25',8.5);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE media_notas > 7.0;

SELECT * FROM tb_estudantes WHERE media_notas < 7.0;

UPDATE tb_estudantes SET media_notas = 10.0 WHERE id = 2;

SELECT * FROM tb_estudantes;