-- ● Arredondar para Cima/Para Baixo: 
-- * Use FLOOR para arredondar para baixo e CEIL para arredondar para cima o valor de um campo de total de vendas.

SELECT 
    valor_total, 
    FLOOR(valor_total) AS valor_minimo, 
    CEIL(valor_total) AS valor_maximo 
FROM pedidos;
