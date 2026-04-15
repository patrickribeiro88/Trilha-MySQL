-- 1. Chave Primária e Estrangeira: 
-- * Crie duas tabelas chamadas clientes e pedidos. Configure: 
-- id_cliente como chave primária na tabela clientes. 
-- id_cliente como chave estrangeira na tabela pedidos, referenciando clientes. 

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  valor_total DECIMAL(10,2),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Qual a importância de definir essas chaves corretamente? 
   -- Eles evitam a "orfandade" de dados (pedidos sem dono) e garantem a velocidade nas buscas (indexação)