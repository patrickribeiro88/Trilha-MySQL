-- 10. Identificação de Gargalos com EXPLAIN: 
-- * Analise uma consulta complexa utilizando EXPLAIN, identifique possíveis gargalos no desempenho e proponha melhorias usando índices ou reestruturação da consulta.

EXPLAIN SELECT c.nome, p.data_pedido, pr.nome_produto, pr.preco
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN produtos pr ON pr.categoria = 'Eletrônicos'
WHERE pr.preco > 2000;

-- Otimiza o filtro de categoria e a busca por preço simultaneamente
CREATE INDEX idx_prod_cat_preco ON produtos(categoria, preco);