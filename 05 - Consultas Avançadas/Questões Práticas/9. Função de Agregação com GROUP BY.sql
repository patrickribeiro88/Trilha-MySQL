-- 9. Função de Agregação com GROUP BY
-- Liste o total de vendas por cliente (nome e total vendido). 

SELECT 
    c.nome AS nome_cliente, 
    SUM(p.valor_total) AS total_vendido
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;