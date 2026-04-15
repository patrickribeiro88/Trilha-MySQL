-- ● Revogação de Permissões: 
-- * Revogue a permissão de leitura (SELECT) na tabela clientes do usuário usuario_local. 

REVOKE SELECT ON loja.clientes FROM 'usuario_local'@'localhost';