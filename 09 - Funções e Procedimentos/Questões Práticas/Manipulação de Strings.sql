-- ● Manipulação de Strings: 
-- * Crie uma consulta que utilize a função CONCAT para gerar um identificador único combinando o nome e o ID de um cliente.

SELECT CONCAT(nome, '_ID', id_cliente) AS identificador_unico 
FROM clientes;