-- 2. Índice Único: 
-- * Crie um índice único na coluna email da tabela clientes para garantir que não existam emails duplicados. Explique a importância desse índice para a integridade dos dados. 

CREATE UNIQUE INDEX idx_cliente_email_unique ON clientes(email);