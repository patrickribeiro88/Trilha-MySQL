-- ● Função SUBSTRING: 
-- * Extraia os três primeiros caracteres do nome de um produto na tabela produtos. 

SELECT nome_produto, SUBSTRING(nome_produto, 1, 3) AS sigla_produto 
FROM produtos;