-- 2. Criação de um Trigger AFTER 
-- * Desenvolva um trigger que atualize o estoque na tabela produtos sempre que um novo pedido for registrado na tabela pedido_produto.

DELIMITER //
CREATE TRIGGER tr_atualizar_estoque_pos_venda
AFTER INSERT ON pedido_produto
FOR EACH ROW
BEGIN
    UPDATE produtos 
    SET estoque = estoque - NEW.quantidade
    WHERE id_produto = NEW.id_produto;
END //
DELIMITER ;