-- 1. Crie uma tabela produtos com as colunas id, nome, preco, quantidade_estoque e data_cadastro. Use as restrições adequadas (chave primária, not null, etc.). 

CREATE DATABASE loja;

CREATE TABLE produtos (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 preco DECIMAL(10,2) NOT NULL,
 quantidade_estoque INT NOT NULL,
 data_cadastro DATE NOT NULL
 );
 

 




 