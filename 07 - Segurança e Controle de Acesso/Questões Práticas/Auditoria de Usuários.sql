-- ● Auditoria de Usuários: 
-- * Liste todos os usuários criados no banco de dados e suas permissões utilizando os comandos adequados.

-- Lista todos os usuários e hosts
SELECT user, host FROM mysql.user;

-- Verifica as permissões de um usuário específico
SHOW GRANTS FOR 'usuario_local'@'localhost';