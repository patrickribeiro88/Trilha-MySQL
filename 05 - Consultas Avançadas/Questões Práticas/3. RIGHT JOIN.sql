-- 3. RIGHT JOIN 
-- * Crie uma consulta para listar todos os pedidos e os nomes dos clientes que os realizaram. 
-- Se o pedido não estiver associado a um cliente, exiba NULL na coluna do nome do cliente. 

SELECT 
    p.id_pedido, 
    p.valor_total, 
    c.nome AS nome_cliente
FROM clientes c
RIGHT JOIN pedidos p ON c.id_cliente = p.id_cliente;