-- 8. Importação de Dados de um Arquivo CSV 
-- * Importe os dados contidos no arquivo clientes.csv para a tabela clientes do banco de dados biblioteca.

LOAD DATA INFILE '/var/lib/mysql-files/clientes.csv' 
INTO TABLE clientes 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES; -- Ignora o cabeçalho se houver