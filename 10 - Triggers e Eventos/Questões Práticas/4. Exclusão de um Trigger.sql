-- 4. Exclusão de um Trigger 
-- * Exclua o trigger que registra exclusões de clientes na tabela log_acoes. 

DROP TRIGGER IF EXISTS tr_log_exclusao_cliente;