-- ● Configuração em Ambientes de Produção: 
-- Configure dois usuários em um banco de dados de produção: 
-- * Um usuário com permissões apenas de leitura (SELECT). 
-- * Um usuário com permissões completas para inserção e alteração (INSERT, UPDATE e DELETE).

-- Usuário de Análise (BI / Relatórios)
CREATE USER 'prod_read_only'@'%' IDENTIFIED BY 'Leitura@Prod2026';
GRANT SELECT ON loja.* TO 'prod_read_only'@'%';

-- Usuário da Aplicação (O que o seu código Node.js/Vue.js vai usar)
CREATE USER 'prod_app_user'@'localhost' IDENTIFIED BY 'AppFull@Prod2026';
GRANT SELECT, INSERT, UPDATE, DELETE ON loja.* TO 'prod_app_user'@'localhost';