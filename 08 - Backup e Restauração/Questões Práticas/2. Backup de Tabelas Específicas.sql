-- 2. Backup de Tabelas Específicas 
-- * Crie um backup que contenha apenas as tabelas livros e autores do banco de dados biblioteca.

mysqldump -u root -p biblioteca livros autores > livros_autores_backup.sql