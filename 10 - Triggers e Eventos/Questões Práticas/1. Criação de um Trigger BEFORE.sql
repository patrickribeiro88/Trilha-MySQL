-- 1. Criação de um Trigger BEFORE 
-- * Crie um trigger que valide, antes de inserir um pedido na tabela pedidos, se a quantidade solicitada de um produto é menor ou igual ao estoque disponível.

DELIMITER //
CREATE TRIGGER tr_validar_estoque_antes_pedido
BEFORE INSERT ON pedidos
FOR EACH ROW
BEGIN
    -- Exemplo considerando uma coluna 'quantidade' e 'id_produto' no pedido
    IF (SELECT estoque FROM produtos WHERE id_produto = NEW.id_produto) < NEW.quantidade THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Erro: Quantidade solicitada maior que o estoque disponível!';
    END IF;
END //
DELIMITER ;