# 💾 Banco de Dados MySQL: Repositório de Exercícios

Este repositório contém meus estudos e resoluções de exercícios práticos em MySQL**. O objetivo é consolidar o aprendizado em modelagem de dados, DDL (Data Definition Language) e DML (Data Manipulation Language).

---

## 🎯 Objetivo de Estudo

* Dominar comandos essenciais de consulta (`SELECT`, `WHERE`,).
* Praticar a modelagem de dados (Criação de tabelas, Relacionamentos).
* Compreender e aplicar Chaves Primárias (`PRIMARY KEY`) e Chaves Estrangeiras (`FOREIGN KEY`).

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
