-- 9. Tabelas Intermediárias: 
-- * Crie uma consulta para listar todos os pedidos contendo um produto específico usando a tabela intermediária pedido_produto. 

SELECT 
    p.id_pedido, 
    p.data_pedido, 
    c.nome AS nome_cliente,
    pp.quantidade
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
WHERE pp.id_produto = 1;