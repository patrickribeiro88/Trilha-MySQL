-- ● Configuração de Permissões por Host: 
-- * Crie um usuário chamado usuario_servidor com permissão de acessar o banco de dados apenas do servidor local.

CREATE USER 'usuario_servidor'@'localhost' IDENTIFIED BY 'ServidorSeguro2026!';
GRANT USAGE ON *.* TO 'usuario_servidor'@'localhost';