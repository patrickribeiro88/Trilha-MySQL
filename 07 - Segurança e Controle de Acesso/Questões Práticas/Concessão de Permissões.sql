-- ● Concessão de Permissões: 
-- * Conceda permissão de leitura (SELECT) na tabela clientes para o usuário usuario_local. 
-- * Conceda todas as permissões em um banco de dados chamado loja para o usuário admin_user. 

-- Acesso específico: apenas leitura em uma tabela
GRANT SELECT ON loja.clientes TO 'usuario_local'@'localhost';

-- Acesso total: super usuário para o banco da loja
GRANT ALL PRIVILEGES ON loja.* TO 'admin_user'@'localhost';