-- 3. Backup de Todos os Bancos de Dados 
-- * Utilize o comando apropriado para criar um backup de todos os bancos de dados do servidor e salve o arquivo como backup_total.sql. 

mysqldump -u root -p --all-databases > backup_total.sql