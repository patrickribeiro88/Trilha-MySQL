-- 5. Limpeza Automática com Eventos 
-- * Crie um evento que limpe registros da tabela log_acoes que tenham mais de 60 dias, executado diariamente às 23h59.

CREATE EVENT ev_limpeza_logs_60dias
ON SCHEDULE EVERY 1 DAY
STARTS (CURRENT_DATE + INTERVAL 1 DAY - INTERVAL 1 MINUTE) -- Próximo 23:59
DO
  DELETE FROM log_acoes WHERE data_hora < NOW() - INTERVAL 60 DAY;