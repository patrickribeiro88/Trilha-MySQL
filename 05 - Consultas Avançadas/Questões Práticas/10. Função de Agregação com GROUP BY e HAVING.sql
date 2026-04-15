-- 10. Função de Agregação com GROUP BY e HAVING 
-- Liste os clientes que realizaram vendas superiores a 200, exibindo o nome do cliente e o total vendido.

SELECT 
    c.nome AS nome_cliente, 
    SUM(p.valor_total) AS total_vendido
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
HAVING total_vendido > 200;