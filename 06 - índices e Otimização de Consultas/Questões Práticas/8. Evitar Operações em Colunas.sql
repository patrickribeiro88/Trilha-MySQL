-- 8. Evitar Operações em Colunas: 
-- * Otimize uma consulta que filtra clientes usando UPPER(nome) para evitar operações que impeçam o uso de índices. Explique a mudança feita. 

-- Ruim: O MySQL não consegue usar o índice da coluna nome aqui
SELECT * FROM clientes 
WHERE UPPER(nome) = 'JOÃO';

-- Otimizado: Agora o MySQL usa o índice idx_nome_clientes
SELECT * FROM clientes 
WHERE nome = 'João';