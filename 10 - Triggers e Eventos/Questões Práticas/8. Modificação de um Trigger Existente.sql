-- 8. Modificação de um Trigger Existente 
-- * Altere um trigger existente para incluir a validação de um novo campo antes de realizar a inserção. 

DROP TRIGGER IF EXISTS tr_validar_estoque_antes_pedido;

DELIMITER //
CREATE TRIGGER tr_validar_estoque_antes_pedido
BEFORE INSERT ON pedidos
FOR EACH ROW
BEGIN
    IF NEW.quantidade <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantidade deve ser superior a zero!';
    ELSEIF (SELECT estoque FROM produtos WHERE id_produto = NEW.id_produto) < NEW.quantidade THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Estoque insuficiente!';
    END IF;
END //
DELIMITER ;