-- 7. Atualização em Cascata: 
-- * Configure a tabela pedidos para que a alteração do id_cliente na tabela clientes atualize automaticamente os registros relacionados. Teste com um exemplo prático. 

ALTER TABLE pedidos DROP FOREIGN KEY pedidos_ibfk_1;

ALTER TABLE pedidos
ADD CONSTRAINT fk_clientes_pedido
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
ON UPDATE CASCADE
ON DELETE CASCADE;

INSERT INTO clientes (id_cliente, nome) VALUES 
(50, 'Empresa Joinville');

INSERT INTO pedidos (id_pedido, id_cliente, data_pedido) VALUES 
(110, 50, '2026-04-13');

SELECT * FROM pedidos WHERE id_cliente =50;

UPDATE clientes SET id_cliente = 500 WHERE id_cliente = 50; 

SELECT *FROM pedidos WHERE id_cliente = 500;