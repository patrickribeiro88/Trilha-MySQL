-- ● Diferença de Datas: 
-- * Calcule o número de dias entre a data de hoje e a data de um pedido na tabela pedidos usando a função DATEDIFF.

SELECT id_pedido, DATEDIFF(NOW(), data_pedido) AS dias_desde_o_pedido 
FROM pedidos;