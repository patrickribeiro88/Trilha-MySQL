-- ● Criação de Procedimentos Armazenados: 
-- * Crie um procedimento armazenado que insira um novo pedido na tabela pedidos, recebendo como entrada o ID do cliente e a data do pedido. 

DELIMITER //
CREATE PROCEDURE InserirPedido(IN p_id_cliente INT, IN p_data_pedido DATE)
BEGIN
    INSERT INTO pedidos (id_cliente, data_pedido, valor_total) 
    VALUES (p_id_cliente, p_data_pedido, 0.00);
END //
DELIMITER ;