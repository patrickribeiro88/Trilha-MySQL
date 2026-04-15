-- Agrupamento de Dados (GROUP BY) 
-- * Agrupe os funcionários por cargo e conte quantos funcionários existem em cada cargo. 

SELECT cargo, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY cargo;