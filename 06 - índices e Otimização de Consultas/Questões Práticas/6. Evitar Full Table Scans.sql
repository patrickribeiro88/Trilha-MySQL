-- 6. Evitar Full Table Scans: 
-- * Crie um índice na coluna nome da tabela clientes e compare o plano de execução de uma consulta SELECT com e sem índice.

CREATE INDEX idx_nome_clientes
ON clientes(nome);

-- Execução SEM índice
DROP INDEX idx_nome_clientes ON clientes;

EXPLAIN SELECT * 
FROM clientes
WHERE nome = 'João';

CREATE INDEX idx_nome_clientes
ON clientes(nome);

-- Execução COM índice
EXPLAIN SELECT * 
FROM clientes
WHERE nome = 'João';

