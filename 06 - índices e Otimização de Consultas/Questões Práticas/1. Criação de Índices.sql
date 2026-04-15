-- 1. Criação de Índices: 
-- * Crie um índice básico na coluna nome da tabela clientes e explique como esse índice pode melhorar a performance em uma consulta SELECT.

CREATE INDEX idx_cliente_nome ON clientes(nome);