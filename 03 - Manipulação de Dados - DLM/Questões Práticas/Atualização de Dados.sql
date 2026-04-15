-- Atualização de Dados 
-- * Atualize o cargo de todos os funcionários com o nome "João" para "Coordenador".

UPDATE funcionarios
SET cargo = 'Coordenador'
WHERE nome LIKE 'João%';