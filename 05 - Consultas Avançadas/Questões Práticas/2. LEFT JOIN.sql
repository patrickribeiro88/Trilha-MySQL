-- 2. LEFT JOIN 
-- * Escreva uma consulta que liste todos os clientes e os valores de seus pedidos. Caso o cliente não tenha realizado pedidos, exiba NULL na coluna do valor total.

SELECT 
    c.nome AS nome_cliente, 
    p.valor_total
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente;