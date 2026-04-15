-- 6. Exclusão em Cascata: 
-- * Demonstre o comportamento de uma exclusão em cascata na tabela clientes, excluindo um cliente e verificando se os pedidos relacionados foram removidos. 

DELETE FROM clientes  WHERE id_cliente= 1;

SELECT * FROM clientes WHERE id_cliente =1;

SELECT * FROM pedidos WHERE id_cliente = 1;


