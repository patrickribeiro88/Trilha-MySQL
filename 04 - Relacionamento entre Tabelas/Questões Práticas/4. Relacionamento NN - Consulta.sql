SELECT 
    p.id_pedido, 
    prod.nome_produto AS produto, 
    pp.quantidade, 
    prod.preco, 
    (pp.quantidade * prod.preco) AS subtotal 
FROM pedidos p 
INNER JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido 
INNER JOIN produtos prod ON pp.id_produto = prod.id_produto 
WHERE p.id_pedido = 101;