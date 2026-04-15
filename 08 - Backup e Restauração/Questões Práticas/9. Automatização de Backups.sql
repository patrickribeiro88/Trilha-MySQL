-- 9. Automatização de Backups 
-- * Configure um cron job para realizar backups automáticos do banco de dados biblioteca diariamente às 2h da manhã, salvando os arquivos em um diretório /backups. 

00 02 * * * mysqldump -u root -p'SuaSenha' biblioteca > /backups/biblioteca_$(date +\%F).sql