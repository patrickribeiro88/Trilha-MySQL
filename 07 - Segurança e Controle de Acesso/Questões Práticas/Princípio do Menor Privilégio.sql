-- ● Princípio do Menor Privilégio: 
-- * Configure um usuário chamado relatorio_user que tenha acesso somente à tabela relatorios com permissões de leitura (SELECT). 

CREATE USER 'relatorio_user'@'localhost' IDENTIFIED BY 'Relat#2026';
GRANT SELECT ON loja.relatorios TO 'relatorio_user'@'localhost';