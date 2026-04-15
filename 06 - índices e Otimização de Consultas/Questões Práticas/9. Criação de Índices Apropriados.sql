-- 9. Criação de Índices Apropriados: 
-- * Crie índices nas colunas categoria e preco da tabela produtos. Explique como esses índices podem melhorar consultas que envolvem filtros nessas colunas. 

-- Índice para acelerar a filtragem por tipo de produto
CREATE INDEX idx_produto_categoria ON produtos(categoria);

-- Índice para acelerar buscas por faixa de preço
CREATE INDEX idx_produto_preco ON produtos(preco);