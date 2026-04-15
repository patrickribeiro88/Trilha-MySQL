-- 10. Documentação de um Evento 
-- * Documente detalhadamente um evento que gere relatórios automáticos, explicando sua finalidade, comportamento esperado e benefícios para o sistema.

-- Ativar o agendador de eventos
SET GLOBAL event_scheduler = ON;

-- Criar tabela de relatório
CREATE TABLE relatorio_vendas (
    id_relatorio INT AUTO_INCREMENT PRIMARY KEY,
    data_relatorio DATE,
    total_vendas DECIMAL(10,2)
);

-- Criar evento para gerar relatório diário
CREATE EVENT evento_relatorio_vendas_diario
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
INSERT INTO relatorio_vendas (data_relatorio, total_vendas)
SELECT CURRENT_DATE, SUM(valor_total)
FROM pedidos;