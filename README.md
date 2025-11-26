# 💾 Banco de Dados SQL: Repositório de Exercícios

Este repositório contém meus estudos e resoluções de exercícios práticos em **SQL (MySQL)**. O objetivo é consolidar o aprendizado em modelagem de dados, DDL (Data Definition Language) e DML (Data Manipulation Language).

---

## 🎯 Objetivo de Estudo

* Dominar comandos essenciais de consulta (`SELECT`, `WHERE`, `JOIN`).
* Praticar a modelagem de dados (Criação de tabelas, Relacionamentos).
* Compreender e aplicar Chaves Primárias (`PRIMARY KEY`) e Chaves Estrangeiras (`FOREIGN KEY`).
* Utilizar funções de agregação (`AVG`, `COUNT`, `SUM`, `GROUP BY`).

---

## 📂 Estrutura do Repositório

O repositório é organizado por **projetos/tópicos** de estudo.

| Pasta | Descrição | Status |
| :--- | :--- | :--- |
| `01_RH_Funcionarios` | Scripts para criação e manipulação das tabelas de **Colaboradores e Departamentos** (Projeto inicial). | ✅ Concluído |
| `02_Sistema_Escolar` | Scripts para criação e consultas em tabelas de **Estudantes e Turmas**. | ⚙️ Em Andamento |
| `03_Livraria_Online` | Scripts para tabelas de **Livros, Autores e Gêneros**. | ⏳ Planejado |
| `99_Consultas_Avancadas` | Arquivos com comandos SQL complexos (`VIEWS`, `INDEXES`, `STORED PROCEDURES`). | ⏳ Planejado |

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** SQL (Structured Query Language)
* **SGBD:** MySQL (Gerenciamento de Banco de Dados)
* **Ambiente de Execução:** MySQL Workbench ou DBeaver

### Configuração (Pré-requisitos)

Para executar os scripts, você deve ter o **MySQL Server** instalado e o **MySQL Workbench** (ou outro cliente SQL) configurado.

1.  Clone este repositório:
    ```bash
    git clone [[SUA URL DO REPOSITÓRIO]](https://github.com/imgabrielimartins/atividades-database/tree/main)
    ```
2.  Abra o arquivo `.sql` desejado no seu cliente SQL.
3.  Execute os comandos na ordem: `CREATE DATABASE`, `USE database`, `CREATE TABLE`, `INSERT INTO`.

---

## 💡 Principais Comandos Abordados

### DDL (Data Definition Language)

```sql
-- Criação de Tabelas
CREATE TABLE NomeTabela (
    coluna1 TIPO PRIMARY KEY,
    coluna2 TIPO,
    FOREIGN KEY (coluna) REFERENCES OutraTabela(coluna)
);
