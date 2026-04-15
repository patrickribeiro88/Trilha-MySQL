-- 3. Registro de Logs 
-- * Crie um trigger que registre em uma tabela log_acoes toda vez que um registro for excluído da tabela clientes. O log deve incluir a data/hora e a identificação do cliente excluído. 

DELIMITER //
CREATE TRIGGER tr_log_exclusao_cliente
AFTER DELETE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO log_acoes (acao, data_hora, detalhe)
    VALUES ('EXCLUSÃO', NOW(), CONCAT('Cliente ID: ', OLD.id_cliente, ' Nome: ', OLD.nome));
END //
DELIMITER ;