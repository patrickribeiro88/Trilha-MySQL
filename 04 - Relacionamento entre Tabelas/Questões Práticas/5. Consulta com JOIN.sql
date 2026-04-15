-- 5. Consulta com JOIN: 
-- * Realize uma consulta SQL para retornar os nomes dos clientes, os produtos comprados e a quantidade de cada produto em um pedido. 

SELECT 	
	c.nome AS nome_cliente,
    prod.nome_produto AS produto,
    pp.quantidade
FROM clientes c 
INNER JOIN pedidos p ON c. id_cliente = p.id_cliente
INNER JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
INNER JOIN produtos prod ON pp.id_produto = prod.id_produto;