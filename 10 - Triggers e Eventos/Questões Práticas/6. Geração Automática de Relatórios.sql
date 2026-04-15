-- 6. Geração Automática de Relatórios 
-- * Configure um evento que gere relatórios mensais de vendas, inserindo informações na tabela relatorios todo dia 1º de cada mês, à meia-noite. 

CREATE EVENT ev_relatorio_mensal_vendas
ON SCHEDULE EVERY 1 MONTH
STARTS '2026-05-01 00:00:00'
DO
  INSERT INTO relatorios (data_geracao, total_vendas)
  SELECT NOW(), SUM(valor_total) FROM pedidos 
  WHERE MONTH(data_pedido) = MONTH(NOW() - INTERVAL 1 MONTH);