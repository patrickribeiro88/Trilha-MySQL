-- 1. INNER JOIN 
-- * Crie uma consulta que liste o nome dos clientes e os valores dos pedidos realizados, exibindo apenas aqueles que possuem pedidos registrados.

SELECT 
    c.nome AS nome_cliente, 
    p.valor_total
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente;