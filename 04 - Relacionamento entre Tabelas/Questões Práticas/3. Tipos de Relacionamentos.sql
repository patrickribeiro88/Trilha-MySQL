-- 3. Tipos de Relacionamentos: 
-- * Desenvolva um relacionamento 1:N entre clientes e pedidos. 
-- Insira 10 registros em cada tabela e demonstre como listar todos os pedidos de um cliente específico usando uma consulta SQL. 

INSERT INTO clientes (id_cliente, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Carlos'),
(4, 'Ana'),
(5, 'Pedro'),
(6, 'Lucas'),
(7, 'Juliana'),
(8, 'Fernanda'),
(9, 'Rafael'),
(10, 'Bruna');

INSERT INTO pedidos (id_pedido, id_cliente, valor_total) VALUES
(1, 1, 150.00),
(2, 1, 89.90),
(3, 2, 200.50),
(4, 3, 45.00),
(5, 3, 300.00),
(6, 4, 120.75),
(7, 5, 60.00),
(8, 6, 500.00),
(9, 7, 75.30),
(10, 1, 220.00);

SELECT * FROM pedidos 
WHERE id_cliente = 1;