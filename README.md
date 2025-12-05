
# 🎾 Banco de Dados de Torneios de Tênis

Este projeto contém a modelagem completa de um banco de dados relacional para gerenciamento de:

- Tenistas  
- Torneios  
- Cidades e Países  
- Patrocinadores  
- Edições de torneios  
- Contratos entre atletas e marcas  

O objetivo é demonstrar conhecimento em SQL, modelagem relacional e consultas complexas utilizando MySQL.

---

## 📚 Funcionalidades

### ✔ Criação de banco e tabelas  
Inclui tabelas com:
- Chaves primárias  
- Chaves estrangeiras  
- Relacionamentos 1:N  
- Tabela N:N (tenista × patrocinador)

### ✔ Inserções de dados fictícios realistas

### ✔ Consultas SQL que demonstram:  
- JOIN e LEFT JOIN  
- GROUP BY e HAVING  
- Agregações (AVG, COUNT)  
- Relacionamentos completos entre as tabelas  

---

## 🗂 Estrutura do Projeto
```
tenistas-db/
│
├── schema.sql  # Criação das tabelas
├── inserts.sql # Dados inseridos
└── consultas.sql # Consultas SQL exigidas no enunciado
```
## ▶ Como executar

1. Abra o MySQL ou MySQL Workbench  
2. Execute primeiro o arquivo `schema.sql`  
3. Depois rode `inserts.sql`  
4. Por fim, teste as consultas em `consultas.sql`

---

## 📊 Consultas implementadas

As consultas incluem:

- Listar tenistas, torneios e cidades  
- Listar tenistas com e sem patrocinadores  
- Listar patrocinadores com e sem atletas  
- Média de classificação de cada tenista  
- Tenistas que participaram de mais de 3 torneios  

---
## Diagrama ER

![Diagrama ER](sistema.png)

---

Projeto criado para fins de estudo e portfólio.
