-- 7. Subconsulta Correlacionada
-- Liste os nomes dos clientes e o total de valores de seus pedidos utilizando uma subconsulta correlacionada

SELECT 
    c.nome AS nome_cliente,
    (SELECT SUM(p.valor_total) 
     FROM pedidos p 
     WHERE p.id_cliente = c.id_cliente) AS total_gasto
FROM clientes c;