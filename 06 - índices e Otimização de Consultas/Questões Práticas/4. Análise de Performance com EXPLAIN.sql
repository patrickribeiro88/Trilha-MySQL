-- 4. Análise de Performance com EXPLAIN: 
-- * Execute o comando EXPLAIN em uma consulta que utiliza um JOIN entre as tabelas clientes e pedidos. Interprete os seguintes campos da saída: type, key, rows e Extra

EXPLAIN SELECT c.nome, p.valor_total 
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente;