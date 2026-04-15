-- 10. Teste de Restauração em Ambiente de Desenvolvimento 
-- * Faça o upload do backup do banco de dados biblioteca para um servidor de teste e restaure o banco de dados para verificar a integridade dos dados.

CREATE DATABASE biblioteca_teste;

mysql -u root -p biblioteca_teste < biblioteca_backup.sql

SELECT COUNT(*) FROM biblioteca_teste.livros;