-- 7. Limitação de Registros com LIMIT: 
-- * Execute uma consulta que retorne apenas os 5 primeiros clientes da tabela clientes, ordenados por nome. Explique como o uso de LIMIT pode melhorar a performance. 

SELECT id_cliente, nome, email 
FROM clientes 
ORDER BY nome ASC 
LIMIT 5;