-- 1. Backup Completo de um Banco de Dados 
-- * Realize um backup completo do banco de dados biblioteca e salve-o em um arquivo chamado biblioteca_backup.sql. 

mysqldump -u root -p biblioteca > biblioteca_backup.sql