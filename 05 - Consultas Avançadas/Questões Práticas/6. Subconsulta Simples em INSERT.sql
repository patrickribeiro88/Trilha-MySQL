-- 6. Subconsulta Simples em INSERT  
-- * Adicione um novo pedido para o cliente que possui o pedido de maior valor. Utilize uma subconsulta para encontrar o cliente.

INSERT INTO pedidos (id_pedido, id_cliente, valor_total)
VALUES (
    500, 
    (SELECT id_cliente FROM (SELECT id_cliente FROM pedidos ORDER BY valor_total DESC LIMIT 1) AS sub), 
    0.00
);