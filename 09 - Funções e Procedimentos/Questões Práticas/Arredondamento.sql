-- ● Arredondamento: 
-- * Arredonde o valor de um campo de preço para duas casas decimais usando a função ROUND. 

SELECT nome_produto, ROUND(preco, 2) AS preco_ajustado 
FROM produtos;