-- 4. FULL OUTER JOIN 
-- * Emule um FULL OUTER JOIN utilizando UNION, para exibir todos os clientes e pedidos, mesmo que não possuam correspondência. 

SELECT 
    c.nome AS nome_cliente, 
    p.id_pedido,
    p.valor_total
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente

UNION

SELECT 
    c.nome AS nome_cliente, 
    p.id_pedido,
    p.valor_total
FROM clientes c
RIGHT JOIN pedidos p ON c.id_cliente = p.id_cliente;