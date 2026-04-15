-- 5. Uso de Índices em JOINs: 
-- * Crie um índice na coluna id_cliente da tabela pedidos e demonstre como ele melhora a performance de uma consulta que realiza um JOIN entre clientes e pedidos.

CREATE INDEX idx_pedidos_cliente ON pedidos(id_cliente);

SELECT c.nome, p.data_pedido, p.valor_total
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente;
